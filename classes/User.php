<?php
	
	/**
	 * 
	 */
	class User
	{
		/**
		 * Maakt een nieuwe user aan na registratie
		 * @param instance $db 
		 * @param string $email 
		 * @param string $password 
		 * @param string $telefoon 
		 * @param string $username 
		 * @param string $voornaam 
		 * @param string $achternaam 
		 * @return bool
		 */
		public function CreateNewUser( $db,$email, $password, $username, $voornaam, $achternaam)
		{
			$salt = uniqid(mt_rand(), true);                             //willekeurge salt
			$hashedPassword	=	hash( 'sha512', $salt . $password );   //sha512-heashed paswoord + salt

			$query = 	'INSERT INTO members (username, 
											voornaam, 
											achternaam,
											avatarUrl, 
											email, 
											salt, 
											password, 
											role,
											header_section,
											header_image,
											header_bigSentence,
											header_smallSentence,
											profiel_section,
											profiel_aboutMe,
											skill_section,
											ervaring_section,
											portfolio_section)
						VALUES(:username,
						 :voornaam,
						 :achternaam,
						 :avatarUrl,
						 :email,
						 :salt,
						 :password,
						 :role,
						 :header_section,
						 :header_image,
						 :header_bigSentence,
						 :header_smallSentence,
						 :profiel_section,
						 :profiel_aboutMe,
						 :skill_section,
						 :ervaring_section,
						 :portfolio_section)';
			$statement = $db->prepare($query);
			$statement->bindValue(':username',$username);
			$statement->bindValue(':voornaam',$voornaam);
			$statement->bindValue(':achternaam',$achternaam);
			$statement->bindValue(':avatarUrl','profile_default_alien.png');
			$statement->bindValue(':email',$email);
			$statement->bindValue(':salt',$salt);
			$statement->bindValue(':password',$hashedPassword);
			$statement->bindValue(':role', "user");
			$statement->bindValue(':header_section', "default_tmp");
			$statement->bindValue(':header_image', "./assets/img/header_backgrounds/default_tmp.jpg");
			$statement->bindValue(':header_bigSentence', "Hello, welcome on my page");
			$statement->bindValue(':header_smallSentence', "Scroll down to learn more about me");
			$statement->bindValue(':profiel_section', "default_tmp");
			$statement->bindValue(':profiel_aboutMe', "Hello visitor, My name is ".$voornaam.". I create websites that help people succeed. When i'm not working I like to explorer our beautifull planet.");
			$statement->bindValue(':skill_section', "default_tmp");
			$statement->bindValue(':ervaring_section', "default_tmp");
			$statement->bindValue(':portfolio_section', "default_tmp");


			$statement->execute();
			//$cookie = setcookie('authenticated', $username, time() - 3600 );
			$cookie = self::createCookie($salt, $username ); //cookie aanmaken
			return $cookie;
		}

		/**
		 * inseten of updaten van acces tokens
		 * @param instance $db 
		 * @param string $token 
		 * @param string $userid 
		 * @param string $tokenmembers_id 
		 * @return string
		 */
		public function saveToken( $db, $token, $userid, $tokenmembers_id)
		{
			if ($tokenmembers_id == '') 
			{
				$query = 	'INSERT INTO tokens (members_id, linkedinAccesToken)
							VALUES(:members_id, :linkedinAccesToken)';
			}
			else
			{
				$query = 	'UPDATE tokens SET linkedinAccesToken = :linkedinAccesToken WHERE members_id = :members_id';
			}
			$statement = $db->prepare($query);
			echo'hallo';
			$statement->bindValue(':members_id',$userid);
			$statement->bindValue(':linkedinAccesToken',$token);

			$statement->execute();
		}

		/**
		 * Aanmaken van authenticated cookie
		 * @param string $salt 
		 * @param string $username 
		 * @return bool
		 */
		public function createCookie( $salt, $username )
		{
						// Cookie aanmaken
			$hashedusername	=	hash( 'sha512', $salt . $username ); //hashes username + salt
			$cookieValue	=	$username . ',' . $hashedusername;

			$cookie	=	setcookie( 'authenticated', $cookieValue, time() + (86400 * 30), '/' ); //cookie van 30 dagen
			return $cookie;
		}

		/**
		 * 
		 * @param instance $db 
		 * @param string $username 
		 * @return array
		 */
		public function toonInfo($db ,$username )
		{				
			$userData	=	$db->query( 'SELECT * FROM members WHERE username = :username', array(':username' => $username ) );
			return $userData;
		}

		public function logout()
		{
			$unsetCookie 	=	setcookie( 'authenticated', '', 0 , '/'); //unsetten van cookie
			return $unsetCookie;
		}

		/**
		 * Kijkt of een user wel op een bepaalde pagina mag komen, dat de user zich wel heeft ingelogt
		 * @param instance $db 
		 * @return bool
		 */
		public function validate($db)
		{
			if ( isset( $_COOKIE['authenticated'] ) ) 
			{
				$userData		=	explode( ',', $_COOKIE['authenticated'] ); //explode sheid een string bij ','
				$username		= 	$userData[0];       //username adress
				$saltedUsername	= 	$userData[1];       //gesalted username adress
				
				$userDataAuth	=	$db->query( 'SELECT * FROM members 
														WHERE username = :username', 
														array(':username' => $username ) 
													);	//alle info van user
				if( !empty( $userDataAuth ) )
				{
					$salt = $userDataAuth[0]['salt'];
					$newlySaltedUsername 	= hash( 'sha512' , $salt . $username ); 

					if ( $newlySaltedUsername == $saltedUsername ) //kijken of of username db en cookie gelijk zijn
					{
						// Cookie is correct
						$cookieValue	=	$username . ',' . $saltedUsername;
						setcookie( 'authenticated', $cookieValue, time() + (86400 * 30), '/' ); //cookie van 30 dagen
						return true;
					}
					else
					{
						// Password niet correct
						return false;
					}
				}
				else
				{
					// User niet gevonden
					return false;
				}
			}
			else
			{
				//Cookie niet geset
				return false;
			}

		}
	}

?>