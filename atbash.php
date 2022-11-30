<?php
class AtbashCipher{
	private $abt;
	private $rev_abt;
	
	public function __construct($abt) {
		$this->abt = $abt;
		$this->rev_abt = strrev($abt);
	}
	
	public function encode($s) {
		$res='';
		foreach(str_split($s) as $char)
			$res .= $this->switchChar($char);
		return $res; 
	}
	
	public function decode($s) {
		return $this->encode($s);
	}
	
	private function switchChar($char) {
		$pos = strpos($this->abt, $char);
		if($pos !== false)
			return $this->rev_abt[$pos]; 
		return $char; 
	}
}
