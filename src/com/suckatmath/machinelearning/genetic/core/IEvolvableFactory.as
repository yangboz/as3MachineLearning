package com.suckatmath.machinelearning.genetic.core {
	
	/**
	* creates new Evolvables from Genomes
	* @author srs
	*/
	public interface IEvolvableFactory {

		/**
		 * 
		 * @param	g:Genome may be null - generate a valid evolvable anyway.
		 * @return Evolvable
		 */
		function makeEvolvable(g:IGenome = null):IEvolvable;
		
		/**
		 * 
		 * @return Evolvable from random genome
		 */
		function makeRandomEvolvable():IEvolvable;
		
	}
	
}