package com.suckatmath.machinelearning.genetic.impl {
	import com.suckatmath.machinelearning.genetic.core.IEvolvable;
	import com.suckatmath.machinelearning.genetic.core.IGenome;
	import flash.errors.IllegalOperationError;
	
	/**
	* Useless empty implementation of Evolvable.  Only exists for compilation purposes.
	* @author srs
	*/
	public class DefaultEvolvable implements IEvolvable {
		
		public function DefaultEvolvable() {
			
		}
		
		public function getGenome():IGenome {
			throw new IllegalOperationError("DefaultEvolvables are useless.  Implement your own");
			return null;
		}
		
		public function setGenome(g:IGenome):void {
			throw new IllegalOperationError("DefaultEvolvables are useless.  Implement your own");
		}
		
		public function getFitness():Number {
			throw new IllegalOperationError("DefaultEvolvables are useless.  Implement your own");
			return NaN;
		}
		
		public function setFitness(f:Number):void {
			throw new IllegalOperationError("DefaultEvolvables are useless.  Implement your own");
		}
		
	}
	
}