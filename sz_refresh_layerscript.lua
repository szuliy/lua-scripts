-- **************************************************
-- Provide Moho with the name of this script object
-- **************************************************

ScriptName = "SZ_RefreshLayerscript"

-- **************************************************
-- General information about this script
-- **************************************************

SZ_RefreshLayerscript = {}

function SZ_RefreshLayerscript:Name()
	return self:Localize("Name")
end

function SZ_RefreshLayerscript:Version()
	return "1.0"
end

function SZ_RefreshLayerscript:Description()
	return self:Localize("Description")
end

function SZ_RefreshLayerscript:Creator()
	return "Stan aka Vodka"
end

function SZ_RefreshLayerscript:UILabel()
	return self:Localize("Name")
end

-- **************************************************
-- The guts of this script
-- **************************************************

function SZ_RefreshLayerscript:IsEnabled(moho)
	if moho.layer:LayerScript() ~= "" then
		return true
	end
	return false
end

function SZ_RefreshLayerscript:IsRelevant(moho)
	if moho.layer:LayerScript() ~= "" then
		return true
	end
	return false
end

function SZ_RefreshLayerscript:Run(moho)
	moho.layer:SetLayerScript(moho.layer:LayerScript())
end

function SZ_RefreshLayerscript:Localize(text)
	local fileWord = MOHO.Localize("/Menus/File/File=File")
	
	local phrase = {}
	
	phrase["Name"] = "Refresh Layerscript"
	phrase["Description"] = "Refreshes layer's embedded script"	
	
	if fileWord == "Файл" then
		phrase["Name"] = "Перезагрузить скрипт слоя"
		phrase["Description"] = "Перезагружает подключенный скрипт слоя"
	end
	
	return phrase[text];
end

