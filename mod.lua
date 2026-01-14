local _0x7a = {"\80\108\97\121\101\114\115", "\71\101\116\83\101\114\118\105\99\101", "\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101", "\82\117\110\83\101\114\118\105\99\101", "\83\116\97\116\115", "\76\111\99\97\108\80\108\97\121\101\114", "\83\99\114\101\101\110\71\117\105", "\83\116\97\102\102\67\104\101\99\107\101\114\95\86\56", "\80\108\97\121\101\114\71\117\105", "\70\114\97\109\101", "\84\101\120\116\76\97\98\101\108", "\83\116\97\102\102\78\111\116\105\102\105\99\97\116\105\111\110\115\95\86\56", "\73\115\73\110\71\114\111\117\112", "\75\105\99\107", "\77\111\114\111\115\111\32\99\97\98\114\111\110\32\100\101\116\101\99\116\97\100\111\47\102\97\108\108\101\110\32\118\105\99\116\105\109"}
local function _0x1b(i) return _0x7a[i] end

local _P = game[_0x1b(2)](game, _0x1b(1))
local _U = game[_0x1b(2)](game, _0x1b(3))
local _R = game[_0x1b(2)](game, _0x1b(4))
local _S = game[_0x1b(2)](game, _0x1b(5))
local _L = _P[_0x1b(6)]
local _G = 693335996

local _E = _L:WaitForChild(_0x1b(9)):FindFirstChild(_0x1b(8))
if _E then _E:Destroy() end

local _SG = Instance.new(_0x1b(7))
_SG.Name = _0x1b(8)
_SG.ResetOnSpawn, _SG.IgnoreGuiInset = false, true
_SG.Parent = _L:WaitForChild(_0x1b(9))

local _MF = Instance.new(_0x1b(10))
_MF.Size, _MF.BackgroundTransparency = UDim2.new(0, 200, 0, 350), 1
_MF.Parent = _SG

local _POS = {
    UDim2.new(1, -210, 0, 10),
    UDim2.new(0, 10, 0, 10),
    UDim2.new(0, 10, 1, -360),
    UDim2.new(1, -210, 1, -360),
    UDim2.new(0.5, -100, 0, 10)
}
local _idx = 1
_MF.Position = _POS[_idx]

local _SL = Instance.new(_0x1b(11))
_SL.Size, _SL.BackgroundTransparency, _SL.TextColor3 = UDim2.new(1, 0, 0, 30), 1, Color3.new(0, 0, 0)
_SL.TextScaled, _SL.Font, _SL.Text = true, Enum.Font.Oswald, "Staff: 0"
_SL.Parent = _MF

local _KL = Instance.new(_0x1b(11))
_KL.Size, _KL.Position, _KL.BackgroundTransparency = UDim2.new(1, 0, 0, 25), UDim2.new(0, 0, 0, 35), 1
_KL.TextColor3, _KL.TextScaled, _KL.Font, _KL.Text = Color3.fromRGB(100, 100, 100), true, Enum.Font.Oswald, "Kick: OFF"
_KL.Parent = _MF

local _PL = Instance.new(_0x1b(11))
_PL.Size, _PL.Position, _PL.BackgroundTransparency = UDim2.new(1, 0, 0, 25), UDim2.new(0, 0, 0, 60), 1
_PL.TextColor3, _PL.TextScaled, _PL.Font, _PL.Text = Color3.fromRGB(100, 100, 100), true, Enum.Font.Oswald, "Ping: 0 ms"
_PL.Parent = _MF

local _NL = Instance.new(_0x1b(11))
_NL.Size, _NL.Position, _NL.BackgroundTransparency = UDim2.new(1, 0, 0, 200), UDim2.new(0, 0, 0, 90), 1
_NL.TextColor3, _NL.TextXAlignment, _NL.TextYAlignment = Color3.new(0, 0, 0), Enum.TextXAlignment.Left, Enum.TextYAlignment.Top
_NL.TextWrapped, _NL.Font, _NL.TextSize, _NL.Text = true, Enum.Font.Oswald, 16, ""
_NL.Parent = _MF

local _KE, _SC, _SCT = false, {}, 0

local function _SN(_t, _cl)
    local _ng = _L:WaitForChild(_0x1b(9)):FindFirstChild(_0x1b(12))
    if not _ng then
        _ng = Instance.new(_0x1b(7))
        _ng.Name = _0x1b(12)
        _ng.Parent = _L:WaitForChild(_0x1b(9))
    end
    local _l = Instance.new(_0x1b(11))
    _l.Size, _l.Position, _l.BackgroundTransparency = UDim2.new(0, 250, 0, 50), UDim2.new(0.5, -125, 0, 50 + (#_ng:GetChildren() * 60)), 1
    _l.Text, _l.TextColor3, _l.TextScaled, _l.Font = _t, _cl, true, Enum.Font.Oswald
    _l.Parent = _ng
    task.spawn(function()
        task.wait(3)
        for i = 0, 1, 0.05 do _l.TextTransparency = i; task.wait(0.03) end
        _l:Destroy()
    end)
end

task.spawn(function()
    while task.wait(1) do
        if _SG and _SG.Parent then
            local _p = math.floor(_S.Network.ServerStatsItem["Data Ping"]:GetValue())
            _PL.Text = "Ping: " .. _p .. " ms"
        else break end
    end
end)

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
            local _ok, _res = pcall(function() return _plr[_0x1b(13)](_plr, _G) end)
            if _ok and _res then _SC[_plr.UserId], _SCT = _plr.Name, _SCT + 1 end
        end
    end
    _RUI()
    if _p and _a then
        if _a == "join" then _SN(_p.Name .. " JOINED", Color3.new(1, 0, 0))
        elseif _a == "leave" then _SN(_p.Name .. " LEFT", Color3.new(0, 1, 0)) end
    end
    if _KE and _SCT > 0 then _L[_0x1b(14)](_L, _0x1b(15)) end
end

_P.PlayerAdded:Connect(function(_p)
    local _ok, _res = pcall(function() return _p[_0x1b(13)](_p, _G) end)
    if _ok and _res then _RST(_p, "join") end
end)

_P.PlayerRemoving:Connect(function(_p)
    local _ok, _res = pcall(function() return _p[_0x1b(13)](_p, _G) end)
    if _ok and _res then _RST(_p, "leave") end
end)

_U.InputBegan:Connect(function(_i, _pr)
    if _pr then return end
    if _i.KeyCode == Enum.KeyCode.K then _KE = not _KE; _RUI()
    elseif _i.KeyCode == Enum.KeyCode.F3 then
        _SG.Enabled = not _SG.Enabled
        local _ng = _L:WaitForChild(_0x1b(9)):FindFirstChild(_0x1b(12))
        if _ng then _ng.Enabled = _SG.Enabled end
    elseif _i.KeyCode == Enum.KeyCode.F4 then
        _idx = _idx + 1
        if _idx > #_POS then _idx = 1 end
        _MF.Position = _POS[_idx]
    end
end)

_RST()
