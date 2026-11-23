<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Eu te amo, Isabela</title>
<meta name="description" content="Uma página feita para uma pessoa só." />
<meta name="theme-color" content="#fdf7f3" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,600;1,400;1,600&family=Inter:wght@400;500&display=swap" rel="stylesheet" />
<style>
  *{box-sizing:border-box}
  :root{
    --paper:#fdf7f3;
    --ink:#392a30;
    --muted:#7c6670;
    --rose:#c2667a;
    --rose-strong:#a8475d;
    --rose-soft:#f0ccd2;
    --plum:#6b4652;
    --card:rgba(255,255,255,.62);
    --line:rgba(168,71,93,.16);
    --serif:'Cormorant Garamond',Georgia,'Times New Roman',serif;
    --sans:'Inter',system-ui,-apple-system,'Segoe UI',Roboto,sans-serif;
    --radius:22px;
  }
  html{scroll-behavior:smooth}
  html{scroll-padding-top:5rem}
  body{
    margin:0;
    font-family:var(--sans);
    color:var(--ink);
    background:var(--paper);
    line-height:1.65;
    -webkit-font-smoothing:antialiased;
    overflow-x:hidden;
  }
  /* aquarela floral de fundo */
  body::before{
    content:"";
    position:fixed;
    inset:-10vmax;
    z-index:-2;
    pointer-events:none;
    background:
      radial-gradient(36vmax 36vmax at 6% 4%, rgba(240,204,210,.9), transparent 62%),
      radial-gradient(28vmax 28vmax at 94% 10%, rgba(233,180,190,.6), transparent 60%),
      radial-gradient(40vmax 40vmax at 82% 94%, rgba(214,166,186,.5), transparent 66%),
      radial-gradient(26vmax 26vmax at 12% 90%, rgba(246,214,202,.75), transparent 62%),
      radial-gradient(20vmax 20vmax at 52% 44%, rgba(255,255,255,.95), transparent 72%);
    filter:blur(8px) saturate(104%);
  }

  /* navegação */
  .nav-wrap{
    position:sticky;
    top:0;
    z-index:50;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:1rem;
    padding:.85rem clamp(1rem,4vw,2rem);
    background:rgba(253,247,243,.74);
    backdrop-filter:blur(10px);
    border-bottom:1px solid var(--line);
  }
  .brand{
    font-family:var(--serif);
    font-style:italic;
    font-size:1.15rem;
    color:var(--plum);
    text-decoration:none;
    letter-spacing:.02em;
  }
  .menu{display:flex;gap:1.5rem}
  .menu a{
    font-size:.78rem;
    letter-spacing:.14em;
    text-transform:uppercase;
    color:var(--muted);
    text-decoration:none;
    transition:color .18s ease;
  }
  .menu a:hover,.menu a:focus-visible{color:var(--rose-strong)}
  .nav-toggle{display:none}

  /* capa */
  .hero{
    min-height:100vh;
    min-height:100svh;
    display:grid;
    place-items:center;
    text-align:center;
    padding:clamp(2rem,6vw,5rem) 1.25rem;
  }
  .hero-inner{max-width:54rem}
  .eyebrow{
    font-size:.7rem;
    letter-spacing:.34em;
    text-transform:uppercase;
    color:var(--rose-strong);
    margin:0 0 1.5rem;
  }
  h1{
    font-family:var(--serif);
    font-style:italic;
    font-weight:600;
    font-size:clamp(2.7rem,11vw,7rem);
    line-height:.98;
    letter-spacing:-.01em;
    color:var(--plum);
    margin:0;
    text-shadow:0 1px 0 rgba(255,255,255,.75);
  }
  h1 .nome{display:block;color:var(--rose-strong)}
  .lede{
    font-family:var(--serif);
    font-style:italic;
    font-size:clamp(1.05rem,3vw,1.4rem);
    color:var(--muted);
    margin:1.6rem auto 0;
    max-width:32rem;
  }
  .cue{
    display:inline-block;
    margin-top:3rem;
    font-size:.7rem;
    letter-spacing:.28em;
    text-transform:uppercase;
    color:var(--rose-strong);
    text-decoration:none;
  }
  .cue::after{
    content:"";
    display:block;
    width:1px;
    height:2.6rem;
    margin:.7rem auto 0;
    background:linear-gradient(var(--rose),transparent);
  }

  /* seções */
  .section{max-width:62rem;margin:0 auto;padding:clamp(3rem,8vw,6.5rem) 1.25rem}
  .kicker{
    display:block;
    font-size:.68rem;
    letter-spacing:.3em;
    text-transform:uppercase;
    color:var(--rose-strong);
    margin-bottom:.7rem;
  }
  .section h2{
    font-family:var(--serif);
    font-style:italic;
    font-weight:600;
    font-size:clamp(1.7rem,4.4vw,2.7rem);
    line-height:1.1;
    color:var(--plum);
    margin:0 0 1.6rem;
  }

  /* carta */
  .letter{
    background:var(--card);
    backdrop-filter:blur(8px);
    border:1px solid var(--line);
    border-radius:var(--radius);
    padding:clamp(1.4rem,4.5vw,3rem);
    box-shadow:0 28px 70px -46px rgba(107,70,82,.7);
  }
  .letter p{
    font-family:var(--serif);
    font-size:clamp(1.05rem,2.6vw,1.32rem);
    line-height:1.78;
    margin:0 0 1.15rem;
  }
  .letter p:last-of-type{margin-bottom:0}
  .sign{
    display:block;
    margin-top:1.8rem;
    font-family:var(--serif);
    font-style:italic;
    font-size:1.25rem;
    color:var(--rose-strong);
  }

  /* motivos */
  .reasons{
    list-style:none;
    margin:0;
    padding:0;
    display:grid;
    gap:1rem;
    grid-template-columns:repeat(auto-fit,minmax(15rem,1fr));
  }
  .reasons li{
    background:var(--card);
    border:1px solid var(--line);
    border-radius:18px;
    padding:1.35rem 1.25rem;
    transition:transform .2s ease, box-shadow .2s ease;
  }
  .reasons li:hover{transform:translateY(-3px);box-shadow:0 22px 44px -34px rgba(107,70,82,.8)}
  .reasons .num{
    display:block;
    font-family:var(--serif);
    font-style:italic;
    font-size:1.5rem;
    color:var(--rose);
    margin-bottom:.3rem;
  }
  .reasons h3{
    font-family:var(--serif);
    font-weight:600;
    font-size:1.18rem;
    color:var(--plum);
    margin:0 0 .45rem;
  }
  .reasons p{margin:0;font-size:.94rem;color:var(--muted)}

  /* surpresa */
  .surprise{text-align:center}
  .surprise h2{margin-bottom:.8rem}
  .surprise .hint{color:var(--muted);font-size:.95rem;margin:0 0 1.8rem}
  .btn{
    font:inherit;
    font-size:.95rem;
    font-weight:500;
    color:#fff;
    background:linear-gradient(135deg,var(--rose),var(--rose-strong));
    border:0;
    border-radius:999px;
    padding:.9rem 1.8rem;
    cursor:pointer;
    box-shadow:0 16px 32px -18px rgba(168,71,93,.95);
    transition:transform .18s ease, box-shadow .18s ease;
  }
  .btn:hover{transform:translateY(-2px)}
  .btn:active{transform:translateY(0)}
  .btn:focus-visible{outline:2px solid var(--plum);outline-offset:3px}
  .panel{
    max-width:34rem;
    margin:1.8rem auto 0;
    background:var(--card);
    border:1px solid var(--line);
    border-radius:18px;
    padding:clamp(1.2rem,4vw,2rem);
    font-family:var(--serif);
    font-style:italic;
    font-size:clamp(1.05rem,2.6vw,1.25rem);
    line-height:1.7;
    color:var(--ink);
    animation:abrir .45s ease both;
  }
  .panel[hidden]{display:none}
  @keyframes abrir{from{opacity:0;transform:translateY(10px)}to{opacity:1;transform:none}}
  .heart-btn{
    display:inline-flex;
    align-items:center;
    justify-content:center;
    width:4.2rem;
    height:4.2rem;
    margin-top:2.4rem;
    font-size:1.6rem;
    line-height:1;
    color:#fff;
    background:linear-gradient(135deg,var(--rose),var(--rose-strong));
    border:0;
    border-radius:50%;
    cursor:pointer;
    box-shadow:0 18px 34px -18px rgba(168,71,93,.95);
    transition:transform .18s ease;
  }
  .heart-btn:hover{transform:scale(1.06)}
  .heart-btn:focus-visible{outline:2px solid var(--plum);outline-offset:4px}

  /* pétalas */
  #petals{position:fixed;inset:0;pointer-events:none;z-index:60;overflow:hidden}
  .petal{
    position:absolute;
    top:-40px;
    width:14px;
    height:14px;
    border-radius:50% 0 50% 50%;
    opacity:.9;
    animation-name:cair;
    animation-timing-function:linear;
    animation-fill-mode:forwards;
  }
  @keyframes cair{
    to{transform:translate(var(--drift,0px),108vh) rotate(var(--spin,180deg));opacity:0}
  }

  /* rodapé */
  footer{
    text-align:center;
    padding:3rem 1.25rem 4rem;
    font-size:.78rem;
    letter-spacing:.16em;
    text-transform:uppercase;
    color:var(--muted);
  }
  footer .coracao{color:var(--rose-strong)}

  /* animação de entrada */
  .reveal{opacity:0;transform:translateY(18px);transition:opacity .7s ease, transform .7s ease}
  .reveal.is-visible{opacity:1;transform:none}

  @media (max-width:640px){
    .nav-toggle{
      display:inline-flex;
      align-items:center;
      font:inherit;
      font-size:.72rem;
      letter-spacing:.16em;
      text-transform:uppercase;
      color:var(--plum);
      background:none;
      border:1px solid var(--line);
      border-radius:999px;
      padding:.45rem .95rem;
      cursor:pointer;
    }
    .menu{
      display:none;
      position:absolute;
      left:0;
      right:0;
      top:100%;
      flex-direction:column;
      gap:0;
      padding:.4rem 1.4rem 1rem;
      background:rgba(253,247,243,.98);
      border-bottom:1px solid var(--line);
    }
    .menu.aberto{display:flex}
    .menu a{padding:.8rem 0;border-bottom:1px dashed var(--line)}
    .menu a:last-child{border-bottom:0}
  }

  @media (prefers-reduced-motion:reduce){
    html{scroll-behavior:auto}
    .reveal{opacity:1;transform:none;transition:none}
    .panel{animation:none}
    .reasons li,.btn,.heart-btn{transition:none}
  }
</style>
</head>
<body id="topo">

  <header class="nav-wrap">
    <a class="brand" href="#topo">Isabela</a>
    <button class="nav-toggle" id="nav-toggle" aria-expanded="false" aria-controls="menu">Menu</button>
    <nav class="menu" id="menu" aria-label="Navegação principal">
      <a href="#carta">Carta</a>
      <a href="#motivos">Seis motivos</a>
      <a href="#surpresa">Surpresa</a>
    </nav>
  </header>

  <main>
    <section class="hero">
      <div class="hero-inner">
        <p class="eyebrow">Para a Isabela</p>
        <h1>Eu te amo,<span class="nome">Isabela</span></h1>
        <p class="lede">Escrevi esta página porque algumas coisas merecem mais do que uma mensagem no celular.</p>
        <a class="cue" href="#carta">Ler a carta</a>
      </div>
    </section>

    <section class="section reveal" id="carta">
      <span class="kicker">Carta aberta</span>
      <h2>O que eu queria dizer</h2>
      <div class="letter">
        <p>Isabela, tem dias em que eu paro e penso em como a minha vida ficou mais leve desde que você entrou nela. Não é só sobre os dias bons. É sobre saber que existe alguém com quem eu quero contar tudo, até as coisas pequenas e sem graça.</p>
        <p>Você tem um jeito de olhar as coisas que me faz prestar atenção. Tem um riso que muda o clima de qualquer lugar. E tem uma delicadeza que não é fraqueza, é força, do tipo que segura a mão dos outros sem fazer barulho.</p>
        <p>Eu não sei escrever bonito como você merece, mas sei o que sinto: eu te amo. Com calma, com vontade de ficar, com planos de amanhã. E se um dia você duvidar disso, volta aqui e lê de novo.</p>
        <span class="sign">Com todo o meu carinho.</span>
      </div>
    </section>

    <section class="section reveal" id="motivos">
      <span class="kicker">Lista honesta</span>
      <h2>Seis motivos, entre muitos</h2>
      <ul class="reasons">
        <li>
          <span class="num">01</span>
          <h3>O seu riso</h3>
          <p>Chega antes de qualquer explicação e resolve o dia inteiro.</p>
        </li>
        <li>
          <span class="num">02</span>
          <h3>A sua conversa</h3>
          <p>Com você até fila de banco vira assunto bom.</p>
        </li>
        <li>
          <span class="num">03</span>
          <h3>O seu cuidado</h3>
          <p>Você percebe o que os outros nem notaram que precisavam.</p>
        </li>
        <li>
          <span class="num">04</span>
          <h3>A sua coragem</h3>
          <p>Você segue em frente mesmo quando ninguém está aplaudindo.</p>
        </li>
        <li>
          <span class="num">05</span>
          <h3>O seu abraço</h3>
          <p>É o único lugar onde o mundo fica em silêncio por um instante.</p>
        </li>
        <li>
          <span class="num">06</span>
          <h3>Ser você</h3>
          <p>Sem personagem, sem ensaio. Só a Isabela, que já basta.</p>
        </li>
      </ul>
    </section>

    <section class="section surprise reveal" id="surpresa">
      <span class="kicker">Uma última coisa</span>
      <h2>Tem uma mensagem escondida aqui</h2>
      <p class="hint">Só abre se quiser ouvir de novo.</p>
      <button class="btn" id="surpresa-btn" aria-expanded="false" aria-controls="surpresa-texto">Abrir a mensagem</button>
      <div class="panel" id="surpresa-texto" hidden>
        Se eu pudesse escolher de novo, entre todas as pessoas e todos os caminhos, eu escolheria você outra vez. E mais uma. E todas as vezes que viessem depois.
      </div>
      <div>
        <button class="heart-btn" id="heart" aria-label="Toque para soltar pétalas">♥</button>
      </div>
    </section>
  </main>

  <footer>
    Feito com <span class="coracao">♥</span> para a Isabela
  </footer>

  <div id="petals" aria-hidden="true"></div>

<script>
  var reduzirMovimento = window.matchMedia('(prefers-reduced-motion: reduce)');

  // menu no celular
  var navToggle = document.getElementById('nav-toggle');
  var menu = document.getElementById('menu');
  if (navToggle && menu) {
    navToggle.addEventListener('click', function () {
      var aberto = navToggle.getAttribute('aria-expanded') === 'true';
      navToggle.setAttribute('aria-expanded', String(!aberto));
      menu.classList.toggle('aberto', !aberto);
    });
    menu.addEventListener('click', function (evento) {
      if (evento.target.tagName === 'A') {
        navToggle.setAttribute('aria-expanded', 'false');
        menu.classList.remove('aberto');
      }
    });
  }

  // mensagem escondida
  var botaoSurpresa = document.getElementById('surpresa-btn');
  var painel = document.getElementById('surpresa-texto');
  if (botaoSurpresa && painel) {
    botaoSurpresa.addEventListener('click', function () {
      var aberto = botaoSurpresa.getAttribute('aria-expanded') === 'true';
      botaoSurpresa.setAttribute('aria-expanded', String(!aberto));
      painel.hidden = aberto;
      botaoSurpresa.textContent = aberto ? 'Abrir a mensagem' : 'Fechar a mensagem';
    });
  }

  // pétalas
  var coracao = document.getElementById('heart');
  var camada = document.getElementById('petals');
  var cores = ['#e79aa8', '#f3c2c9', '#d98b9c', '#f7d9d2'];

  if (coracao && camada) {
    coracao.addEventListener('click', function () {
      if (reduzirMovimento.matches) { return; }
      for (var i = 0; i < 18; i++) {
        var petala = document.createElement('span');
        petala.className = 'petal';
        petala.style.left = (Math.random() * 100) + 'vw';
        petala.style.background = cores[Math.floor(Math.random() * cores.length)];
        petala.style.animationDuration = (2.6 + Math.random() * 1.9).toFixed(2) + 's';
        petala.style.animationDelay = (Math.random() * 0.5).toFixed(2) + 's';
        petala.style.setProperty('--drift', (Math.random() * 140 - 70).toFixed(0) + 'px');
        petala.style.setProperty('--spin', (Math.random() * 720 - 360).toFixed(0) + 'deg');
        camada.appendChild(petala);
        petala.addEventListener('animationend', function () {
          if (this.parentNode) { this.parentNode.removeChild(this); }
        });
      }
    });
  }

  // aparecer ao rolar
  var alvos = document.querySelectorAll('.reveal');
  if ('IntersectionObserver' in window && !reduzirMovimento.matches) {
    var observador = new IntersectionObserver(function (entradas) {
      entradas.forEach(function (entrada) {
        if (entrada.isIntersecting) {
          entrada.target.classList.add('is-visible');
          observador.unobserve(entrada.target);
        }
      });
    }, { threshold: 0.15 });
    alvos.forEach(function (alvo) { observador.observe(alvo); });
  } else {
    alvos.forEach(function (alvo) { alvo.classList.add('is-visible'); });
  }
</script>
</body>
</html>
