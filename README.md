# Script de Criação de Usuários, Grupos e Permissões no Linux - Curso de Linux Fundamentals da DIO

Este script Bash automatiza a criação de **diretórios**, **grupos de usuários**, **usuários do sistema** e a configuração de **permissões de acesso** em um servidor Linux (Ubuntu Server).

Ele é ideal para cenários de estudo, laboratórios, aulas práticas ou ambientes controlados.

---

## 📌 Funcionalidades

O script executa as seguintes ações:

### 📂 Criação de diretórios
- `/publico`
- `/adm`
- `/ven`
- `/sec`

### 👥 Criação de grupos
- `GRP_ADM` → Administradores
- `GRP_VEN` → Vendas
- `GRP_SEC` → Secretaria

### 👤 Criação de usuários
Cada usuário é criado com:
- Diretório home (`-m`)
- Shell padrão `/bin/bash`
- Senha criptografada com **SHA-512**
- Associação a um grupo específico

**Usuários criados:**

| Grupo | Usuários |
|-----|---------|
| GRP_ADM | carlos, maria, joao |
| GRP_VEN | debora, sebastiana, roberta |
| GRP_SEC | josefina, amanda, rogerio |

---

### 🔐 Configuração de permissões

| Diretório | Dono | Grupo | Permissão |
|----------|------|-------|-----------|
| /adm | root | GRP_ADM | 770 |
| /ven | root | GRP_VEN | 770 |
| /sec | root | GRP_SEC | 770 |
| /publico | root | root | 777 |

📌 Isso garante que:
- Apenas usuários do grupo tenham acesso total às suas pastas
- A pasta `/publico` seja acessível por todos

---

## 🧠 Tabela de permissões (chmod)

| Valor | Permissão | Significado |
|-----|-----------|-------------|
| 7 | rwx | leitura, escrita e execução |
| 6 | rw- | leitura e escrita |
| 5 | r-x | leitura e execução |
| 4 | r-- | somente leitura |
| 3 | -wx | escrita e execução |
| 2 | -w- | somente escrita |
| 1 | --x | somente execução |

**Exemplo:**
```bash
chmod 755 arquivo
# Dono: rwx | Grupo: r-x | Outros: r-x
