%% Script for SimScape Initialization
i = 18;
U1 = 3.3;

% Расчет сопротивлений
if i < 10
    R1 = i * 1750; R2 = i * 175;
else
    R1 = i * 875; R2 = i * 85;
end

% Расчет емкостей
if i < 10
    C1 = (mod(i, 3) + 1) * 1e-6;
    C2 = (mod(i, 2) + 1) * 1e-6;
else
    C1 = (mod(i, 2) + 1) * 1e-6;
    C2 = (mod(i, 2) + 2) * 1e-6;
end

% Расчет индуктивности
L = (mod(i, (if i < 10, 3, 2)) + 1) * 2; % Компактная запись

% Вывод подтверждения в консоль (опционально)
fprintf('SimScape: Params loaded for i=%d (R1=%.1f, C1=%.1e)\n', i, R1, C1);