# 📦 IaC.sh – Provisionamento de Usuários, Grupos e Diretórios no Linux

## 📖 Visão Geral

O **IaC.sh** é um script Bash criado para automatizar a criação de **diretórios**, **grupos** e **usuários** em sistemas Linux (Ubuntu/Debian), seguindo o conceito de **Infrastructure as Code (IaC)**.

Ele é ideal para:

* Ambientes educacionais e laboratoriais
* Exercícios de administração Linux
* Padronização de acessos por grupo
* Automação inicial de servidores

---

## 🧱 Estrutura Criada

### 📂 Diretórios

```
/publico
/adm
/ven
/sec
```

### 👥 Grupos

```
GRP_ADM
GRP_VEN
GRP_SEC
```

### 👤 Usuários

| Grupo   | Usuários                    |
| ------- | --------------------------- |
| GRP_ADM | carlos, maria, joao         |
| GRP_VEN | debora, sebastiana, roberto |
| GRP_SEC | josefina, amanda, rogerio   |

---

## 🔐 Modelo de Permissões

* **/publico** → acesso total (leitura, escrita e execução para todos)
* **/adm** → acesso exclusivo do grupo GRP_ADM
* **/ven** → acesso exclusivo do grupo GRP_VEN
* **/sec** → acesso exclusivo do grupo GRP_SEC

---

## 📊 Diagrama da Arquitetura

```mermaid
graph TD
    ROOT[/root/] --> PUBLICO[/publico]
    ROOT --> ADM[/adm]
    ROOT --> VEN[/ven]
    ROOT --> SEC[/sec]

    ADM --> GRP_ADM
    VEN --> GRP_VEN
    SEC --> GRP_SEC

    GRP_ADM --> carlos
    GRP_ADM --> maria
    GRP_ADM --> joao

    GRP_VEN --> debora
    GRP_VEN --> sebastiana
    GRP_VEN --> roberto

    GRP_SEC --> josefina
    GRP_SEC --> amanda
    GRP_SEC --> rogerio
```

---

## 🚀 Como Utilizar

### 1️⃣ Clonar o repositório

```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
```

### 2️⃣ Dar permissão de execução

```bash
chmod +x IaC.sh
```

### 3️⃣ Executar o script

```bash
sudo ./IaC.sh
```

> ⚠️ **Importante:** o script deve ser executado como **root** para criar usuários, grupos e diretórios no sistema.

---

## 🔑 Senhas Padrão

Todos os usuários são criados com a senha inicial:

```
123
```

🔒 **Recomendação:** altere as senhas após o primeiro login.

---

## 🛠️ Boas Práticas Aplicadas

* Automação via Bash
* Separação de acessos por grupo
* Uso de permissões mínimas necessárias
* Script reprodutível (IaC)
* Padronização de estrutura

---

## 🧪 Testes Sugeridos

```bash
su carlos
cd /adm        # permitido
cd /ven        # acesso negado
```

```bash
su debora
cd /ven        # permitido
cd /sec        # acesso negado
```

---

## 📌 Possíveis Melhorias

* Verificação se usuários/grupos já existem
* Uso de variáveis para facilitar manutenção
* Log de execução
* Integração com CI/CD

---

## 📜 Licença

Este projeto é livre para uso educacional e acadêmico.

---

## 👨‍💻 Autor

Desenvolvido como exercício prático de **Administração Linux e Infrastructure as Code (IaC)**.

> *Automatizar é reduzir erros e ganhar escala.* 🚀
