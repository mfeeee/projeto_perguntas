# Projeto Perguntas

Um aplicativo de quiz interativo desenvolvido em Flutter para testar conhecimentos sobre PHP e programação.

## Sobre o Projeto

Este é um aplicativo de perguntas e respostas que apresenta um quiz sobre PHP com múltiplas escolhas. O usuário pode navegar pelas questões, selecionar respostas e visualizar sua pontuação final com feedback personalizado.

## Funcionalidades

- Quiz Interativo: Perguntas de múltipla escolha sobre PHP
- Navegação Sequencial: Avance pelas questões uma por vez
- Sistema de Pontuação: Pontuação baseada nos acertos
- Feedback Personalizado: Mensagens diferentes baseadas na performance
- Interface Responsiva: Design adaptável e amigável
- Reinício do Quiz: Possibilidade de refazer o questionário

## Tecnologias Utilizadas

- Flutter: Framework principal
- Dart: Linguagem de programação
- Material Design: Para componentes de interface

## Estrutura do Projeto
```
lib/
├── main.dart              # Arquivo principal da aplicação
├── question.dart          # Widget para exibir perguntas
├── answer.dart         # Widget para botões de resposta
├── result.dart        # Widget para exibir resultado final
└── quiz.dart        # Widget para exibir questionário
```

## Como Executar

### Pré-requisitos
- Flutter SDK instalado
- Editor de código (VS Code, Android Studio, etc.)
- Emulador ou dispositivo físico

### Passos
1. Clone o repositório:
```bash
git clone <url-do-repositorio>
cd projeto_perguntas```
2. Instale as dependências:
```bash 
flutter pub get```
3. Execute o aplicativo:
```bash 
flutter run```

## Como Usar

1. Abra o aplicativo
2. Leia a pergunta apresentada
3. Clique em uma das opções de resposta
4. Continue até completar todas as perguntas
5. Visualize seu resultado final com feedback personalizado
6. Clique em "Reiniciar Quiz" para tentar novamente

## Sistema de Pontuação

- 0 pontos: Nenhuma resposta correta
- 100 pontos: 1 resposta correta
- 200 pontos: 2 respostas corretas
- 300 pontos: 3 respostas corretas (pontuação máxima)

## Características da Interface

- Design simples
- Textos centralizados e legíveis
- Botões responsivos com feedback visual
- Espaçamento adequado entre elementos

## Compatibilidade

- Android 5.0+ (API 21+)
- iOS 11.0+
- Web (Flutter Web)
- Desktop (Windows, macOS, Linux)

## Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (git checkout -b feature/nova-feature)
3. Commit suas mudanças (git commit -m 'Adiciona nova feature')
4. Push para a branch (git push origin feature/nova-feature)
5. Abra um Pull Request

## Licença

Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

## Autor

Desenvolvido como projeto de aprendizado em Flutter.

---

Nota: Este é um projeto focado no aprendizado de Flutter e desenvolvimento mobile.