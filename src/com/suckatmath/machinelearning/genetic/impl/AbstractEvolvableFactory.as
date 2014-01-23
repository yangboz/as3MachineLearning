package com.suckatmath.machinelearning.genetic.impl {
	import com.suckatmath.machinelearning.genetic.core.IEvolvableFactory;
	import com.suckatmath.machinelearning.genetic.core.IEvolvable;
	import com.suckatmath.machinelearning.genetic.core.IGenome;
	
	/**
	* Convenience base class for EvolvableFactories.  Not required, but useful.
	* uses an example genome as a template.
	* Don't use this directly.  Extend it.
	* @author srs
	*/
	public class AbstractEvolvableFactory implements IEvolvableFactory {
		
		/**
		 * template genome to use.  makeEvolvable can call newRandom on this.
		 */
		public var exampleGenome:IGenome;
		
		/**
		 * 
		 * @param	g Genome to use as example
		 */
		public function AbstractEvolvableFactory(g:IGenome) {
			exampleGenome = g;
		}
		
		/**
		 * create a new Evolvable
		 * @param	g - if not given, will use exampleGenome
		 */
		public function makeEvolvable(g:IGenome = null):IEvolvable {
			if (g == null) {
				g = exampleGenome.newRandom();
			}
			return buildEvolvable(g);
		}
		
		public function makeRandomEvolvable():IEvolvable {
			return makeEvolvable();
		}
		
		/**
		 * As implemented, this is useless.  Override it with something that builds Evolvables you want.
		 * @param	g
		 * @return
		 */
		public function buildEvolvable(g:IGenome):IEvolvable {
			return new DefaultEvolvable();
		}
		
	}
	
}