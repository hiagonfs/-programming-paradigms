#include <bits/stdc++.h>

using namespace std;

int main(){

    string numerosLidos;

    vector<int> numeros;

    getline(cin, numerosLidos);

    stringstream separador(numerosLidos);

    string n; // buffer

    while(separador >> n) numeros.push_back(atoi(n.c_str()));

    int soma = 0;
    for(int i = 0; i < numeros.size(); i++) soma += numeros[i];

    int media = soma / numeros.size();

    string numerosMaiores;

    for(int i = 0; i < numeros.size(); i++) {
        if(numeros[i] > media) {
            cout << numeros[i] << " ";
        }
    }

    cout << numerosMaiores << endl;

    return 0;
}
