--[[
Copyright (C) 2025 Space V

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]


local function shiftCoronaDesc()
    BeginScaleformMovieMethodOnFrontendHeader("SHIFT_CORONA_DESC");
    ScaleformMovieMethodAddParamBool(true);
    ScaleformMovieMethodAddParamBool(true);
    EndScaleformMovieMethod();

    BeginScaleformMovieMethodOnFrontendHeader("SET_HEADER_TITLE");
    ScaleformMovieMethodAddParamTextureNameString("");
    ScaleformMovieMethodAddParamBool(true);
    EndScaleformMovieMethod();

    PushScaleformMovieFunctionParameterString("");
    ScaleformMovieMethodAddParamBool(true);
    EndScaleformMovieMethod();

    BeginScaleformMovieMethodOnFrontend("SET_HEADING_DETAILS");
    ScaleformMovieMethodAddParamTextureNameString("");
    ScaleformMovieMethodAddParamTextureNameString("");
    ScaleformMovieMethodAddParamTextureNameString("");
    ScaleformMovieMethodAddParamBool(false);
    EndScaleformMovieMethod();
end

local function setLogoMap()
    RequestStreamedTextureDict(Config.TEXTURE_FILE, true);
    while (not HasStreamedTextureDictLoaded(Config.TEXTURE_FILE)) do
        Wait(0);
    end

    BeginScaleformMovieMethodOnFrontendHeader("SET_HEADER_TITLE");
    AddTextEntry("FE_THDR_GTAO","<img src='img://"..Config.TEXTURE_FILE"/"..Config.TEXTURE_DICT"' width="..Config.Width" height="..Config.Height" />");
    ScaleformMovieMethodAddParamTextureNameString("FE_THDR_GTAO");
    ScaleformMovieMethodAddParamBool(false);
    ScaleformMovieMethodAddParamTextureNameString("");
    ScaleformMovieMethodAddParamBool(false);
    ScaleformMovieMethodAddParamBool(true);
    EndScaleformMovieMethod();

    shiftCoronaDesc();
end