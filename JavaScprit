// Alternância entre formulários de login e cadastro
function exibirFormularioCadastro() {
  document.getElementById('form-login').style.display = 'none';
  document.getElementById('form-criar-conta').style.display = 'block';
}

function exibirFormularioLogin() {
  document.getElementById('form-criar-conta').style.display = 'none';
  document.getElementById('form-login').style.display = 'block';
}

// Cadastro de novo usuário
document.getElementById('form-criar-conta')?.addEventListener('submit', function (event) {
  event.preventDefault();

  const novoEmail = document.getElementById('criar-email').value.trim();
  const novaSenha = document.getElementById('criar-senha').value;

  if (!novoEmail || !novaSenha) {
    alert('Por favor, preencha todos os campos para continuar.');
    return;
  }

  const dadosUsuario = {
    email: novoEmail,
    senha: novaSenha
  };

  localStorage.setItem('usuarioCadastrado', JSON.stringify(dadosUsuario));
  alert('Cadastro efetuado! Faça o login agora.');
  exibirFormularioLogin();
});

// Login do usuário
document.getElementById('form-login')?.addEventListener('submit', function (event) {
  event.preventDefault();

  const emailDigitado = document.getElementById('login-email').value.trim();
  const senhaDigitada = document.getElementById('login-senha').value;

  const dadosSalvos = JSON.parse(localStorage.getItem('usuarioCadastrado'));

  if (!dadosSalvos) {
    alert('Nenhum cadastro encontrado. Crie sua conta primeiro.');
    exibirFormularioCadastro();
    return;
  }

  if (emailDigitado === dadosSalvos.email && senhaDigitada === dadosSalvos.senha) {
    localStorage.setItem('usuarioLogado', JSON.stringify({ email: emailDigitado }));
    window.location.href = 'formulario.html';
  } else {
    alert('Credenciais inválidas. Verifique e tente novamente.');
  }
});

// Máscaras de CPF e telefone (impede caracteres não numéricos)
document.addEventListener('DOMContentLoaded', function () {
  const campoCPF = document.querySelector('input[placeholder="123.456.789-00"]');
  const campoTelefone = document.querySelector('input[placeholder="(99) 9 9999-9999"]');

  campoCPF?.addEventListener('input', function () {
    this.value = this.value.replace(/\D/g, '');
  });

  campoTelefone?.addEventListener('input', function () {
    this.value = this.value.replace(/\D/g, '');
  });
});

// Envio do formulário de inscrição
document.getElementById('formularioInscricao')?.addEventListener('submit', function (event) {
  event.preventDefault();

  const form = event.target;
  const numeroEndereco = form[9].value.trim().toUpperCase();

  if (!/^\d+$/.test(form[2].value)) {
    alert('O campo CPF deve conter apenas números.');
    return;
  }

  if (!/^\d+$/.test(form[5].value)) {
    alert('O telefone deve conter somente números.');
    return;
  }

  if (!/^\d+$/.test(numeroEndereco) && numeroEndereco !== 'S/N') {
    alert('Número inválido. Informe apenas números ou "S/N".');
    return;
  }

  const trilha = document.querySelector('input[name="trilha"]:checked')?.parentNode.textContent.trim() || 'Não selecionado';

  const informacoes = {
    nome: form[0].value,
    nascimento: form[1].value,
    cpf: form[2].value,
    genero: form[3].value,
    email: form[4].value,
    telefone: form[5].value,
    cep: form[7].value,
    endereco: form[8].value,
    numero: numeroEndereco,
    cidade: form[10].value,
    estado: form[11].value,
    trilha: trilha
  };

  alert('Inscrição finalizada com sucesso! O comprovante será baixado em PDF.');

  document.body.innerHTML = `
    <div style="padding: 30px; font-family: sans-serif;">
      <h2>Comprovante de Inscrição</h2>
      <p><strong>Nome:</strong> ${informacoes.nome}</p>
      <p><strong>Data de Nascimento:</strong> ${informacoes.nascimento}</p>
      <p><strong>CPF:</strong> ${informacoes.cpf}</p>
      <p><strong>Gênero:</strong> ${informacoes.genero}</p>
      <p><strong>Email:</strong> ${informacoes.email}</p>
      <p><strong>Telefone:</strong> ${informacoes.telefone}</p>
      <p><strong>CEP:</strong> ${informacoes.cep}</p>
      <p><strong>Endereço:</strong> ${informacoes.endereco}, Nº ${informacoes.numero}, ${informacoes.cidade} - ${informacoes.estado}</p>
      <p><strong>Trilha escolhida:</strong> ${informacoes.trilha}</p>
    </div>
  `;

  html2pdf().set({
    margin: 10,
    filename: 'comprovante_inscricao.pdf',
    html2canvas: { scale: 2 },
    jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' }
  }).from(document.body).save();
});
