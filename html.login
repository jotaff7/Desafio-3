<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Acesso ao Sistema</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <div class="box-formulario">
    <div class="bloco-acesso">

      <!-- Área de Login -->
      <form id="form-login" class="formulario" style="display: block;">
        <h2 class="titulo">Entrar</h2>

        <label for="login-email">Email</label>
        <input id="login-email" class="input-texto" type="email" placeholder="email@exemplo.com" required>

        <label for="login-senha">Senha</label>
        <input id="login-senha" class="input-texto" type="password" placeholder="Digite sua senha" required>

        <button type="submit" class="btn-formulario">Acessar</button>

        <p class="texto-link">Não possui uma conta? <a href="#" onclick="exibirFormularioCadastro()">Cadastre-se</a></p>
      </form>

      <!-- Área de Cadastro -->
      <form id="form-criar-conta" class="formulario" style="display: none;">
        <h2 class="titulo">Cadastro</h2>

        <label for="criar-email">Email</label>
        <input id="criar-email" class="input-texto" type="email" placeholder="email@exemplo.com" required>

        <label for="criar-senha">Senha</label>
        <input id="criar-senha" class="input-texto" type="password" placeholder="Crie uma senha segura" required>

        <button type="submit" class="btn-formulario">Registrar</button>

        <p class="texto-link">Já possui conta? <a href="#" onclick="exibirFormularioLogin()">Faça login</a></p>
      </form>

    </div>
  </div>

  <script src="script.js"></script>
</body>
</html>
