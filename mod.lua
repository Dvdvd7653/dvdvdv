local _0xS = {"\80\108\97\121\101\114\115", "\71\101\116\83\101\114\118\105\99\101", "\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101", "\83\116\97\116\115", "\76\111\99\97\108\80\108\97\121\101\114", "\83\99\114\101\101\110\71\117\105", "\73\115\73\110\71\114\111\117\112", "\75\105\99\107"}
local function _0xO(i) return _0xS[i] end

local _P = game[_0xO(2)](game, _0xO(1))
local _U = game[_0xO(2)](game, _0xO(3))
local _ST = game[_0xO(2)](game, _0xO(4))
local _L = _P[_0xO(5)]
local _G = 693335996

local _E = _L:WaitForChild("\80\108\97\121\101\114\71\117\105"):FindFirstChild("\83\67\95\86\54")
if _E then _E:Destroy() end

local _SG = Instance.new(_0xO(6))
_SG.Name = "\83\67\95\86\54"
_SG.ResetOnSpawn, _SG.IgnoreGuiInset = false, true
_SG.Parent = _L:WaitForChild("\80\108\97\121\101\114\71\117\105")

local _F = Instance.new("\70\114\97\109\101")
_F.Size, _F.Position, _F.BackgroundTransparency = UDim2.new(0, 200, 0, 350), UDim2.new(1, -210, 0, 10), 1
_F.Parent = _SG

local _SL = Instance.new("\84\101\120\116\76\97\98\101\108")
_SL.Size, _SL.BackgroundTransparency, _SL.TextColor3 = UDim2.new(1, 0, 0, 30), 1, Color3.new(0, 0, 0)
_SL.TextScaled, _SL.Font, _SL.Text = true, Enum.Font.Oswald, "Staff: 0"
_SL.Parent = _F

local _KL = Instance.new("\84\101\120\116\76\97\98\101\108")
_KL.Size, _KL.Position, _KL.BackgroundTransparency = UDim2.new(1, 0, 0, 25), UDim2.new(0, 0, 0, 35), 1
_KL.TextColor3, _KL.TextScaled, _KL.Font, _KL.Text = Color3.fromRGB(100, 100, 100), true, Enum.Font.Oswald, "Kick: OFF"
_KL.Parent = _F

local _PL = Instance.new("\84\101\120\116\76\97\98\101\108")
_PL.Size, _PL.Position, _PL.BackgroundTransparency = UDim2.new(1, 0, 0, 25), UDim2.new(0, 0, 0, 60), 1
_PL.TextColor3, _PL.TextScaled, _PL.Font, _PL.Text = Color3.fromRGB(100, 100, 100), true, Enum.Font.Oswald, "Ping: 0 ms"
_PL.Parent = _F

local _NL = Instance.new("\84\101\120\116\76\97\98\101\108")
_NL.Size, _NL.Position, _NL.BackgroundTransparency = UDim2.new(1, 0, 0, 200), UDim2.new(0, 0, 0, 90), 1
_NL.TextColor3, _NL.TextXAlignment, _NL.TextYAlignment = Color3.new(0, 0, 0), Enum.TextXAlignment.Left, Enum.TextYAlignment.Top
_NL.TextWrapped, _NL.Font, _NL.TextSize, _NL.Text = true, Enum.Font.Oswald, 16, ""
_NL.Parent = _F

spawn(function()
    while wait(1) do
        if _SG and _SG.Parent then
            local _p = math.floor(_ST.Network.ServerStatsItem["Data Ping"]:GetValue())
            _PL.Text = "Ping: " .. _p .. " ms"
        else break end
    end
end)

local _SC, _SCT, _KE = {}, 0, false

local function _RUI()
    _SL.Text = "Staff: " .. _SCT
    _KL.Text = "Kick: " .. (_KE and "ON" or "OFF")
    _KL.TextColor3 = _KE and Color3.new(0.8, 0, 0) or Color3.fromRGB(100, 100, 100)
    local _ns = {}
    for _, _n in pairs(_SC) do table.insert(_ns, _n) end
    table.sort(_ns)
    _NL.Text = table.concat(_ns, "\n")
end

local function _RST()
    _SC, _SCT = {}, 0
    for _, _p in ipairs(_P:GetPlayers()) do
        if _p ~= _L then
            local _ok, _res = pcall(function() return _p[_0xO(7)](_p, _G) end)
            if _ok and _res then _SC[_p.UserId], _SCT = _p.Name, _SCT + 1 end
        end
    end
    _RUI()
    if _KE and _SCT > 0 then _L[_0xO(8)](_L, "\83\116\97\102\102\32\68\101\116\101\99\116\97\100\111") end
end

_P.PlayerAdded:Connect(_RST)
_P.PlayerRemoving:Connect(_RST)
_U.InputBegan:Connect(function(_i, _pr)
    if _pr then return end
    if _i.KeyCode == Enum.KeyCode.K then
        _KE = not _KE; _RUI()
    elseif _i.KeyCode == Enum.KeyCode.F3 then
        _SG.Enabled = not _SG.Enabled
    end
end)

_RST()
