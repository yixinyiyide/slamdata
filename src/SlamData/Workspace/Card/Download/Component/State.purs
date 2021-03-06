{-
Copyright 2016 SlamData, Inc.

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

module SlamData.Workspace.Card.Download.Component.State
  ( State
  , initialState
  , _url
  , _levelOfDetails
  , _fileName
  ) where

import Data.Lens (LensP, lens)

import SlamData.Workspace.LevelOfDetails (LevelOfDetails(..))

type State =
  { url ∷ String
  , levelOfDetails ∷ LevelOfDetails
  , fileName ∷ String
  }


_url ∷ ∀ a r. LensP {url ∷ a | r} a
_url = lens (_.url) (_{url = _})

_levelOfDetails ∷ ∀ a r. LensP {levelOfDetails ∷ a|r} a
_levelOfDetails = lens (_.levelOfDetails) (_{levelOfDetails = _})

_fileName ∷ ∀ a r. LensP {fileName ∷ a |r} a
_fileName = lens (_.fileName) (_{fileName = _})

initialState ∷ State
initialState =
  { url: ""
  , fileName: ""
  , levelOfDetails: High
  }
