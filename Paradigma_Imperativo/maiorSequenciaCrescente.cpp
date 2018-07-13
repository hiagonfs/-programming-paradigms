#include <bits/stdc++.h>

using namespace std;

int main() {

    int qtdElementos, elemento;

    cin >> qtdElementos;

    vector<int> numeros;

    for(int i = 0; i < qtdElementos; i++) {

        cin >> elemento;
        numeros.push_back(elemento);

    }

    vector<int> registra_sequencias;

    int maiorSequencia;

    for(int i = 0; i < numeros.size() - 1; i++){
        if(numeros[i] < numeros[i + 1]) {
            maiorSequencia++;
            registra_sequencias.push_back(maiorSequencia + 1);
        } else {
            maiorSequencia = 0;
        }
    }

    int maxinvector = 0;

    for(int i =0; i < registra_sequencias.size(); i++) {
        if(registra_sequencias[i] >= maxinvector) maxinvector = registra_sequencias[i];
    }

    //cout << maxinvector;

    cout << maxinvector;
}
