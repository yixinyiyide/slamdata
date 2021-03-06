{-
Copyright 2015 SlamData, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-}

module Test.SlamData.Property.Workspace.Card.ChartOptions.Model
  ( check
  ) where

import SlamData.Prelude

import Data.Argonaut as J

import SlamData.Workspace.Card.ChartOptions.Model as M

import Test.StrongCheck (SC, Result(..), quickCheck, (<?>))

check ∷ ∀ eff. SC eff Unit
check = quickCheck \(model ∷ M.Model) →
  case M.decode (M.encode model) of
    Left err → Failed $ "Decode failed: " <> err
    Right model' →
      model ≡ model'
      <?> ( "models mismatch\n"
            <> show (J.encodeJson model)
            <> "\n" <> show (J.encodeJson model')
          )
