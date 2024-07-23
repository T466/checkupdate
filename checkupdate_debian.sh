#!/bin/bash

echo "Verificando atualizações pendentes..."

# Atualiza a lista de pacotes disponíveis
sudo apt update > /dev/null

# Verifica se há atualizações disponíveis
updates=$(apt list --upgradable 2>/dev/null | wc -l)

if [ $updates -gt 1 ]; then
            echo "Há atualizações pendentes."
                echo "Lista de pacotes que podem ser atualizados:"
                    apt list --upgradable
            else
                        echo "Não há atualizações pendentes."
fi
