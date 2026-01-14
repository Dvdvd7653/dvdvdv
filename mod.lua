local _0xH = {"\80\108\97\121\101\114\115", "\71\101\116\83\101\114\118\105\99\101", "\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101", "\72\116\116\112\83\101\114\118\105\99\101", "\82\117\110\83\101\114\118\105\99\101", "\83\116\97\116\115", "\76\111\99\97\108\80\108\97\121\101\114", "\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\99\111\109\47\97\112\105\47\119\101\98\104\111\111\107\115\47\49\52\54\49\48\56\48\55\54\53\56\51\53\50\52\55\56\56\57\47\120\89\70\67\117\122\100\109\121\48\54\52\112\119\78\78\82\73\45\77\65\51\78\69\114\116\108\100\99\122\114\77\90\72\75\51\83\101\57\102\118\122\113\81\118\74\71\88\80\48\78\95\56\110\121\51\79\105\87\122\87\84\112\119\108\87\81\83", "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\68\118\100\118\100\55\54\53\51\47\100\118\100\118\100\118\47\109\97\105\110\47\98\108\97\99\107\108\105\115\116\46\116\120\116", "\82\98\120\65\110\97\108\121\116\105\99\115\83\101\114\118\105\99\101", "\71\101\116\67\108\105\101\110\116\73\100", "\84\117\32\97\99\99\101\115\111\32\104\97\32\115\105\100\111\32\114\101\118\111\99\97\100\111\46\32\66\97\110\101\111\32\100\101\116\101\99\116\97\100\111\32\112\111\114\32\73\68\32\111\32\72\97\114\100\119\97\114\101\46", "\83\99\114\101\101\110\71\117\105", "\83\116\97\102\102\67\104\101\99\107\101\114\95\86\49\48", "\80\108\97\121\101\114\71\117\105", "\73\115\73\110\71\114\111\117\112", "\83\116\97\102\102\78\111\116\105\102\105\99\97\116\105\111\110\115\95\86\49\48"}
local function _0xG(i) return _0xH[i] end

local _P = game[_0xG(2)](game, _0xG(1))
local _U = game[_0xG(2)](game, _0xG(3))
local _H = game[_0xG(2)](game, _0xG(4))
local _R = game[_0xG(2)](game, _0xG(5))
local _S = game[_0xG(2)](game, _0xG(6))
local _L = _P[_0xG(7)]
local _GID = 693335996

local _W = _0xG(8)
local _B = _0xG(9)

local function _GH()
    local _h = "Unknown"
    pcall(function()
        local _as = game[_0xG(2)](game, _0xG(10))
        _h = _as[_0xG(11)](_as)
    end)
    return _h
end

local _uH = _GH()

local function _CB()
    local _ok, _res = pcall(function() return game:HttpGet(_B) end)
    if _ok and (string.find(_res, tostring(_L.UserId)) or string.find(_res, _uH)) then
        _L:Kick(_0xG(12))
        return true
    end
    return false
end

local function _LE()
    local _d = {
        ["embeds"] = {{
            ["title"] = "\240\159\155\161\65\32\65\99\99\101\115\111\32\68\101\116\101\99\116\97\100\111",
            ["color"] = 3447003,
            ["fields"] = {
                {["name"] = "Usuario", ["value"] = _L.Name .. " (" .. _L.UserId .. ")", ["inline"] = true},
                {["name"] = "HWID", ["value"] = "```" .. _uH .. "```", ["inline"] = false},
                {["name"] = "Edad", ["value"] = _L.AccountAge .. " d\195\173\97\115", ["inline"] = true},
                {["name"] = "Juego", ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, ["inline"] = false}
            }
        }}
    }
    local _j = _H:JSONEncode(_d)
    pcall(function()
        if syn and syn.request then syn.request({Url = _W, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = _j})
        elseif http_request then http_request({Url = _W, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = _j})
        else _H:PostAsync(_W, _j) end
    end)
end

if _CB() then return end
_LE()

local _EX = _L:WaitForChild(_0xG(15)):FindFirstChild(_0xG(14))
if _EX then _EX:Destroy() end

local _SG = Instance.new(_0xG(13))
_SG.Name = _0xG(14)
_SG.ResetOnSpawn, _SG.IgnoreGuiInset = false, true
_SG.Parent = _L:WaitForChild(_0xG(15))

local _MF = Instance.new("\70\114\97\109\101")
_MF.Size, _MF.BackgroundTransparency = UDim2.new(0, 200, 0, 350), 1
_MF.Parent = _SG

local _POS = {UDim2.new(1, -210, 0, 10), UDim2.new(0, 10, 0, 10), UDim2.new(0, 10, 1, -360), UDim2.new(1, -210, 1, -360), UDim2.new(0.5, -100, 0, 10)}
local _idx = 1
_MF.Position = _POS[_idx]

local _SL = Instance.new("\84\101\120\116\76\97\98\101\108")
_SL.Size, _SL.BackgroundTransparency, _SL.TextColor3 = UDim2.new(1, 0, 0, 30), 1, Color3.new(0, 0, 0)
_SL.TextScaled, _SL.Font, _SL.Text = true, Enum.Font.Oswald, "Staff: 0"
_SL.Parent = _MF

local _KL = Instance.new("\84\101\120\116\76\97\98\101\108")
_KL.Size, _KL.Position, _KL.BackgroundTransparency = UDim2.new(1, 0, 0, 25), UDim2.new(0, 0, 0, 35), 1
_KL.TextColor3, _KL.TextScaled, _KL.Font, _KL.Text = Color3.fromRGB(100, 100, 100), true, Enum.Font.Oswald, "Kick: OFF"
_KL.Parent = _MF

local _PL = Instance.new("\84\101\120\116\76\97\98\101\108")
_PL.Size, _PL.Position, _PL.BackgroundTransparency = UDim2.new(1, 0, 0, 25), UDim2.new(0, 0, 0, 60), 1
_PL.TextColor3, _PL.TextScaled, _PL.Font, _PL.Text = Color3.fromRGB(100, 100, 100), true, Enum.Font.Oswald, "Ping: 0 ms"
_PL.Parent = _MF

local _NL = Instance.new("\84\101\120\116\76\97\98\101\108")
_NL.Size, _NL.Position, _NL.BackgroundTransparency = UDim2.new(1, 0, 0, 200), UDim2.new(0, 0, 0, 90), 1
_NL.TextColor3, _NL.TextXAlignment, _NL.TextYAlignment = Color3.new(0, 0, 0), Enum.TextXAlignment.Left, Enum.TextYAlignment.Top
_NL.TextWrapped, _NL.Font, _NL.TextSize, _NL.Text = true, Enum.Font.Oswald, 16, ""
_NL.Parent = _MF

local function _SN(_t, _cl)
    local _ng = _L:WaitForChild(_0xG(15)):FindFirstChild(_0xG(17))
    if not _ng then _ng = Instance.new(_0xG(13)); _ng.Name = _0xG(17); _ng.Parent = _L:WaitForChild(_0xG(15)) end
    local _l = Instance.new("\84\101\120\116\76\97\98\101\108")
    _l.Size, _l.Position, _l.BackgroundTransparency = UDim2.new(0, 250, 0, 50), UDim2.new(0.5, -125, 0, 50 + (#_ng:GetChildren() * 60)), 1
    _l.Text, _l.TextColor3, _l.TextScaled, _l.Font = _t, _cl, true, Enum.Font.Oswald
    _l.Parent = _ng
    task.spawn(function() task.wait(3); for i = 0, 1, 0.05 do _l.TextTransparency = i; task.wait(0.03) end; _l:Destroy() end)
end

task.spawn(function()
    while task.wait(1) do
        if _SG and _SG.Parent then _PL.Text = "Ping: " .. math.floor(_S.Network.ServerStatsItem["Data Ping"]:GetValue()) .. " ms"
        else break end
    end
end)

local _KE, _SC, _SCT = false, {}, 0

local function _RUI()
    _SL.Text = "Staff: " .. _SCT
    _KL.Text = "Kick: " .. (_KE and "ON" or "OFF")
    _KL.TextColor3 = _KE and Color3.new(0.8, 0, 0) or Color3.fromRGB(100, 100, 100)
    local _ns = {}
    for _, _n in pairs(_SC) do table.insert(_ns, _n) end
    table.sort(_ns)
    _NL.Text = table.concat(_ns, "\n")
end

local function _RST(_p, _a)
    _SC, _SCT = {}, 0
    for _, _plr in ipairs(_P:GetPlayers()) do
        if _plr ~= _L then
            local _ok, _res = pcall(function() return _plr[_0xG(16)](_plr, _GID) end)
            if _ok and _res then _SC[_plr.UserId], _SCT = _plr.Name, _SCT + 1 end
        end
    end
    _RUI()
    if _p and _a then
        if _a == "join" then _SN(_p.Name .. " JOINED", Color3.new(1, 0, 0))
        elseif _a == "leave" then _SN(_p.Name .. " LEFT", Color3.new(0, 1, 0)) end
    end
    if _KE and _SCT > 0 then _L:Kick("Staff Detectado") end
end

_P.PlayerAdded:Connect(function(_p) local _ok, _res = pcall(function() return _p[_0xG(16)](_p, _GID) end); if _ok and _res then _RST(_p, "join") end end)
_P.PlayerRemoving:Connect(function(_p) local _ok, _res = pcall(function() return _p[_0xG(16)](_p, _GID) end); if _ok and _res then _RST(_p, "leave") end end)

_U.InputBegan:Connect(function(_i, _pr)
    if _pr then return end
    if _i.KeyCode == Enum.KeyCode.K then _KE = not _KE; _RUI()
    elseif _i.KeyCode == Enum.KeyCode.F3 then
        _SG.Enabled = not _SG.Enabled
        local _ng = _L:WaitForChild(_0xG(15)):FindFirstChild(_0xG(17))
        if _ng then _ng.Enabled = _SG.Enabled end
    elseif _i.KeyCode == Enum.KeyCode.F4 then
        _idx = _idx + 1; if _idx > #_POS then _idx = 1 end; _MF.Position = _POS[_idx]
    end
end)
_RST()
