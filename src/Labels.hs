module Labels
       ( getLabels
       ) where

import Types (Labels(..), LabelFull(..))

import Data.List (sortOn)
import Toml (TomlCodec, (.=))

import qualified Toml
import qualified Data.ByteString as BS
import qualified Data.Text.Encoding as TE


getLabels :: BS.ByteString -> Labels
getLabels fileContent = do
    let meta = TE.decodeUtf8 fileContent
    case Toml.decode labelsCodec meta of
        Left err  -> error $ show err
        Right (Labels lbs) -> Labels $ sortOn lfId lbs

labelFullCodec :: TomlCodec LabelFull
labelFullCodec = LabelFull
    <$> Toml.text "path"  .= path
    <*> Toml.int  "id"    .= lfId
    <*> Toml.text "label" .= label
    <*> Toml.text "about" .= about
    <*> Toml.bool "available" .= available
    <*> Toml.text "source" .= source
    <*> Toml.arraySetOf Toml._Text "target" .= target
    <*> Toml.dioptional (Toml.int "year") .= year

labelsCodec :: TomlCodec Labels
labelsCodec = Labels
    <$> Toml.list labelFullCodec "titles" .= labelTitles
