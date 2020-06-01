%Schreiben Sie ein Matlab-Programm, welches eine Audiodatei einliest (max. 10 s, ein
%Instrument oder Stimme) und akustisch wiedergibt. Modifizieren Sie das Audiosignal
%mit folgenden Operationen und geben Sie das Resultat ebenfalls akustisch aus:
%a) y[n] = p−1 Pk=0 ak · x[n − k] mit ak = 1/p, p  100
%b) Hall-Effekt (Akustik eines großen Raums, wie sieht die Impulsantwort aus?)
%c) Quantisieren der Signalwerte auf acht verschiedene Werte
%d) y[n] = 0.4 · log(100 · |x[n]| + 1) · sgn(x[n])

[x,Fs] = audioread(filename);

file_player = audioplayer(y, Fs);
play(file_player);
% a)

p = 1000;
a = 1/p;
for n = 1:length(x)
    for k = 0:p-1
        if n-k > 0
            y(n) = y(n) + a*x(n-k);
        end
    end
end