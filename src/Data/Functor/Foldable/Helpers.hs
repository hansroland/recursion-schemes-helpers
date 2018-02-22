module Data.Functor.Foldable.Helpers 
  ( module Data.Functor.Foldable.Helpers 
  , module Data.Functor.Foldable
) where

import Data.Functor.Foldable
import Control.Arrow ((&&&), (***))

-- Some Helper Functions for recursion-schemes

-- | funzip see also semigroups -Data.List.NonEmpty  
funzip :: Functor f => f (a, b) -> (f a, f b)
funzip = fmap fst &&& fmap snd

-- | zip together two F-algebras
zipAlgebras :: Functor f => (f a -> c) -> (f b -> d) -> f (a, b) -> (c, d)
zipAlgebras f g = (f *** g) . funzip