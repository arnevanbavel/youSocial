<?php


    class ArnesEngine {

        protected $file;
        protected $values = array();
        
        /**
         * Inlade van template en zetten in variable $file
         * @param string $file 
         * @return type
         */
        public function __construct($file) {
            $this->file = $file;
        }
        
        /**
         * De key en de value aan elkaar koppelen en in array plaatsen
         * @param string $key 
         * @param string|int|... $value 
         * @return type
         */
        public function set($key, $value) {
            $this->values[$key] = $value;
        }
        
        /**
         * 1. Kijken of template is ingeladen
         * 2. Zo ja, pak de content van de template en vervang de keys me de tags van de template
         * @return type
         */
        public function output() {

            if (!file_exists($this->file)) {
            	return "Voeg eerst een remplate toe ($this->file).<br />";
            }
            $output = file_get_contents($this->file);
            
            foreach ($this->values as $key => $value) {
            	$tagToReplace = "[@$key]";
            	$output = str_replace($tagToReplace, $value, $output);
            }

            return $output;
        }
    }

?>