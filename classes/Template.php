<?php
	/**
	* 
	*/
	class Template
	{
		//Headers Paths
		Protected $header 			= "./templates/headers/";
		Protected $createHeader 	= "./templatescreate/headers/";
		Protected $createHeaderCSS 	= "./templatescreate/headers/css/";
		Protected $createHeaderJS 	= "./templatescreate/headers/js/";
		//profiel Paths
		Protected $profiel 			= "./templates/profiels/";
		Protected $createProfiel 	= "./templatescreate/profiels/";
		Protected $createProfielCSS = "./templatescreate/profiels/css/";
		Protected $createProfielJS 	= "./templatescreate/profiels/js/";
		//Skill Paths
		Protected $skill 			= "./templates/skills/";
		Protected $createSkill  	= "./templatescreate/skills/";
		//portfolio Paths
		Protected $portfolio 		= "./templates/portfolios/";
		Protected $createPortfolio 	= "./templatescreate/portfolios/";
		//ervaring Paths
		Protected $ervaring			= "./templates/ervaringen/";
		Protected $createErvaringen	= "./templatescreate/ervaringen/";

		public function __construct( )	
		{

		}
		/**************************** HEADERS ***************************************/
		public function getheader ($headerName)
		{
			$header = file_get_contents( $this->header.$headerName.".html");
			return $header;
		}

		public function getCreateHeaders ()
		{
			$headers = array();
			$headersPaths = glob($this->createHeader.'*.html');
			foreach ($headersPaths as $headersPath) 
			{
				$headers[] = file_get_contents($headersPath);
			}				
			return $headers;
		}

		public function getCreateHeadersCSS()
		{
			$headers = array();
			$headersPaths = glob($this->createHeaderCSS.'*.css');			
			return $headersPaths;
		}

		public function getCreateHeadersJS()
		{
			$headers = array();
			$headersPaths = glob($this->createHeaderJS.'*.js');			
			return $headersPaths;
		}

		/**************************** PROFIEL ***************************************/

		public function getprofiel ($profielName)
		{
			$profiel = file_get_contents( $this->profiel.$profielName.".html");
			return $profiel;
		}

		public function getCreateProfiels()
		{
			$profiels = array();
			$profielsPaths = glob($this->createProfiel.'*.html');
			foreach ($profielsPaths as $profielsPath) 
			{
				$profiels[] = file_get_contents($profielsPath);
			}				
			return $profiels;
		}

		public function getCreateProfielsCSS()
		{
			$profiels = array();
			$profielsPaths = glob($this->createProfielCSS.'*.css');			
			return $profielsPaths;
		}

		public function getCreateProfielsJS()
		{
			$profiels = array();
			$profielsPaths = glob($this->createProfielJS.'*.js');			
			return $profielsPaths;
		}

		/**************************** SKILL ***************************************/

		public function getskill ($skillName)
		{
			$skill = file_get_contents( $this->skill.$skillName.".html");
			return $skill;
		}

	}
?>