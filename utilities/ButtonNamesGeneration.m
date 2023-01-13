%% Knobs
knobsA = arrayfun(@(x) ['Knob A' num2str(x)],1:8,'UniformOutput',false);
knobsB = arrayfun(@(x) ['Knob B' num2str(x)],1:8,'UniformOutput',false);
knobsC = arrayfun(@(x) ['Knob C' num2str(x)],1:8,'UniformOutput',false);
faders = arrayfun(@(x) ['Fader F' num2str(x)],1:8,'UniformOutput',false);
buttons = [knobsA(:) ; knobsB(:) ; knobsC(:) ; faders(:)];

% knobsA = arrayfun(@(x) ["Knob A", num2str(x)],1:8,'UniformOutput',false);
% knobsB = arrayfun(@(x) ["Knob B", num2str(x)],1:8,'UniformOutput',false);
% knobsC = arrayfun(@(x) ["Knob C", num2str(x)],1:8,'UniformOutput',false);
% faders = arrayfun(@(x) ["Fader F", num2str(x)],1:8,'UniformOutput',false);
% buttons = [knobsA(:) ; knobsB(:) ; knobsC(:) ; faders(:)];

%% Log formulas
close all
a = 10;
b = 1000;
x = linspace(0,1,1000);
f1 = @(x) a*(b/a).^x;
f2 = @(x) (a-1) + (b-a+1).^x;

figure, semilogy(x, f1(x)), grid on
hold on, semilogy(x, f2(x),'r')
d = abs(f1(x)-f2(x));
figure, plot(x, d), grid on
