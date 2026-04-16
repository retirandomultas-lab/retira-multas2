<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retira Multas - Defesa de CNH e Recurso de Multas</title>
    <meta name="description" content="Especialistas em defesa de CNH e recurso de multas de trânsito. Análise gratuita e recurso garantido. Atendemos todo o Brasil.">
    <meta name="keywords" content="multa trânsito, defesa CNH, recurso multa, Blumenau, Santa Catarina">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700;800&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-color: #0d0d0d;
            color: #ffffff;
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* NAVBAR */
        nav {
            background-color: #1a1a1a;
            padding: 1rem 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            border-bottom: 2px solid #F5C518;
        }

        nav .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav .logo {
            font-family: 'Montserrat', sans-serif;
            font-size: 1.5rem;
            font-weight: 800;
            color: #F5C518;
        }

        nav .cta-btn {
            background-color: #F5C518;
            color: #0d0d0d;
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 700;
            text-decoration: none;
            display: inline-block;
            transition: all 0.3s;
        }

        nav .cta-btn:hover {
            background-color: #ffed4e;
            transform: scale(1.05);
        }

        /* HERO */
        .hero {
            background: linear-gradient(135deg, rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url('https://d2xsxph8kpxj0f.cloudfront.net/310519663536759710/ExN8VriAZxrfZRYXXeWKRx/hero_retira_multas_a5050d80.jpg');
            background-size: cover;
            background-position: center;
            padding: 150px 0 100px;
            text-align: center;
            margin-top: 60px;
            min-height: 600px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hero .container {
            max-width: 800px;
        }

        .hero h1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 3rem;
            font-weight: 800;
            margin-bottom: 1rem;
            color: #F5C518;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.8);
        }

        .hero p {
            font-size: 1.3rem;
            margin-bottom: 2rem;
            color: #ffffff;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.8);
        }

        .hero .urgency {
            background-color: rgba(245, 197, 24, 0.2);
            border: 2px solid #F5C518;
            padding: 1rem;
            border-radius: 5px;
            margin-bottom: 2rem;
            color: #F5C518;
            font-weight: 700;
        }

        .hero .cta-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 1rem 2rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 700;
            text-decoration: none;
            display: inline-block;
            transition: all 0.3s;
            font-size: 1rem;
        }

        .btn-primary {
            background-color: #F5C518;
            color: #0d0d0d;
        }

        .btn-primary:hover {
            background-color: #ffed4e;
            transform: scale(1.05);
        }

        .btn-secondary {
            background-color: transparent;
            color: #F5C518;
            border: 2px solid #F5C518;
        }

        .btn-secondary:hover {
            background-color: #F5C518;
            color: #0d0d0d;
        }

        /* STATS */
        .stats {
            background-color: #1a1a1a;
            padding: 3rem 0;
            text-align: center;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
        }

        .stat-item h3 {
            font-family: 'Montserrat', sans-serif;
            font-size: 2.5rem;
            color: #F5C518;
            margin-bottom: 0.5rem;
        }

        .stat-item p {
            color: #b0b0b0;
        }

        /* SECTION */
        section {
            padding: 3rem 0;
            border-bottom: 1px solid #2a2a2a;
        }

        section h2 {
            font-family: 'Montserrat', sans-serif;
            font-size: 2rem;
            margin-bottom: 2rem;
            color: #F5C518;
            text-align: center;
        }

        /* CARDS */
        .cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
        }

        .card {
            background-color: #1a1a1a;
            padding: 2rem;
            border-radius: 5px;
            border-left: 4px solid #F5C518;
            transition: all 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(245, 197, 24, 0.2);
        }

        .card h3 {
            color: #F5C518;
            margin-bottom: 1rem;
            font-size: 1.3rem;
        }

        .card p {
            color: #b0b0b0;
            line-height: 1.8;
        }

        /* STEPS */
        .steps-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .step {
            text-align: center;
            background-color: #1a1a1a;
            padding: 2rem;
            border-radius: 5px;
        }

        .step-number {
            font-family: 'Montserrat', sans-serif;
            font-size: 3rem;
            color: #F5C518;
            font-weight: 800;
            margin-bottom: 1rem;
        }

        .step h3 {
            color: #ffffff;
            margin-bottom: 1rem;
        }

        /* TESTIMONIALS */
        .testimonial {
            background-color: #1a1a1a;
            padding: 2rem;
            border-radius: 5px;
            border-top: 3px solid #F5C518;
        }

        .stars {
            color: #F5C518;
            margin-bottom: 1rem;
        }

        .testimonial-text {
            color: #b0b0b0;
            margin-bottom: 1rem;
            font-style: italic;
        }

        .testimonial-author {
            color: #F5C518;
            font-weight: 700;
        }

        /* BRAZIL SECTION */
        .brazil-section {
            background-color: #F5C518;
            color: #0d0d0d;
            padding: 3rem 0;
        }

        .brazil-card {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 3rem;
            border-radius: 10px;
            text-align: center;
            max-width: 600px;
            margin: 0 auto;
        }

        .brazil-card .br {
            font-family: 'Montserrat', sans-serif;
            font-size: 3rem;
            font-weight: 800;
            color: #ffffff;
            margin-bottom: 1rem;
        }

        .brazil-card .number {
            font-family: 'Montserrat', sans-serif;
            font-size: 4rem;
            font-weight: 800;
            color: #0d0d0d;
            margin-bottom: 0.5rem;
        }

        .brazil-card .label {
            font-size: 1.2rem;
            font-weight: 700;
            color: #0d0d0d;
            margin-bottom: 1rem;
        }

        .brazil-card p {
            color: #0d0d0d;
            font-size: 1rem;
            line-height: 1.6;
        }

        /* MAP */
        .map-container {
            background-color: #1a1a1a;
            padding: 3rem;
            border-radius: 10px;
            text-align: center;
            min-height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 2px solid #F5C518;
        }

        .map-icon {
            font-size: 5rem;
            color: #F5C518;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% {
                opacity: 1;
                transform: scale(1);
            }
            50% {
                opacity: 0.5;
                transform: scale(1.1);
            }
        }

        /* CONTACT */
        .contact-section {
            background-color: #1a1a1a;
            padding: 3rem 0;
        }

        .contact-form {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #F5C518;
            font-weight: 700;
        }

        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.75rem;
            background-color: #2a2a2a;
            border: 1px solid #F5C518;
            border-radius: 5px;
            color: #ffffff;
            font-family: 'Roboto', sans-serif;
        }

        .form-group textarea {
            resize: vertical;
            min-height: 120px;
        }

        /* FLOATING BUTTON */
        .floating-btn {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            background-color: #F5C518;
            color: #0d0d0d;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 1.5rem;
            z-index: 999;
            box-shadow: 0 5px 20px rgba(245, 197, 24, 0.4);
            animation: float 3s ease-in-out infinite;
            text-decoration: none;
        }

        .floating-btn:hover {
            transform: scale(1.1);
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        /* FOOTER */
        footer {
            background-color: #0a0a0a;
            padding: 2rem 0;
            text-align: center;
            border-top: 1px solid #2a2a2a;
            color: #b0b0b0;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2rem;
            }

            .hero p {
                font-size: 1rem;
            }

            .hero .cta-buttons {
                flex-direction: column;
            }

            .btn {
                width: 100%;
            }

            nav .cta-btn {
                display: none;
            }
        }
    </style>
</head>
<body>
    <!-- NAVBAR -->
    <nav>
        <div class="container">
            <div class="logo">RM</div>
            <a href="https://wa.me/5547997624005?text=Olá!%20Vim%20pelo%20site%20da%20Retira%20Multas%20e%20gostaria%20de%20atendimento." class="cta-btn">Consultar Agora</a>
        </div>
    </nav>

    <!-- HERO -->
    <section class="hero">
        <div class="container">
            <h1>Evite Perder sua CNH por Causa de uma Multa</h1>
            <p>Analisamos sua multa gratuitamente e entramos com recurso para você</p>
            <div class="urgency">
                ⏰ Você tem apenas 30 dias para recorrer. Não perca esse prazo!
            </div>
            <div class="cta-buttons">
                <a href="https://wa.me/5547997624005?text=Olá!%20Vim%20pelo%20site%20da%20Retira%20Multas%20e%20gostaria%20de%20atendimento." class="btn btn-primary">👉 Consultar Multa Grátis</a>
                <a href="#contact" class="btn btn-secondary">Falar com Especialista</a>
            </div>
        </div>
    </section>

    <!-- STATS -->
    <section class="stats">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item">
                    <h3>+500</h3>
                    <p>Clientes Atendidos</p>
                </div>
                <div class="stat-item">
                    <h3>4.9★</h3>
                    <p>Avaliação Média</p>
                </div>
                <div class="stat-item">
                    <h3>5 Anos</h3>
                    <p>De Experiência</p>
                </div>
                <div class="stat-item">
                    <h3>27</h3>
                    <p>Estados Atendidos</p>
                </div>
            </div>
        </div>
    </section>

    <!-- PROBLEMA -->
    <section>
        <div class="container">
            <h2>Por Que Você Precisa de Ajuda Agora?</h2>
            <div class="cards-grid">
                <div class="card">
                    <h3>⚠️ Risco de Perder a CNH</h3>
                    <p>Multas acumuladas podem resultar na suspensão ou cassação da sua habilitação. Não deixe isso acontecer!</p>
                </div>
                <div class="card">
                    <h3>⏱️ Prazo Curto</h3>
                    <p>Você tem apenas 30 dias para recorrer de uma multa. Após esse período, perde o direito.</p>
                </div>
                <div class="card">
                    <h3>🔴 Burocracia Complexa</h3>
                    <p>O processo de recurso envolve documentação complexa e prazos rigorosos que muitos desconhecem.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- SOLUÇÃO -->
    <section>
        <div class="container">
            <h2>Como Resolvemos Seu Problema</h2>
            <div class="cards-grid">
                <div class="card">
                    <h3>📋 Análise Completa</h3>
                    <p>Analisamos sua multa em detalhes, verificando se há irregularidades ou possibilidades de recurso.</p>
                </div>
                <div class="card">
                    <h3>⚖️ Especialistas em Lei</h3>
                    <p>Nossa equipe é especializada em legislação de trânsito e conhece todas as brechas legais.</p>
                </div>
                <div class="card">
                    <h3>✅ Recurso Garantido</h3>
                    <p>Entramos com o recurso para você, cuidando de toda a documentação e prazos.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- COMO FUNCIONA -->
    <section>
        <div class="container">
            <h2>Como Funciona em 4 Passos</h2>
            <div class="steps-container">
                <div class="step">
                    <div class="step-number">1</div>
                    <h3>Envie Sua Multa</h3>
                    <p>Mande a foto ou documento da multa via WhatsApp</p>
                </div>
                <div class="step">
                    <div class="step-number">2</div>
                    <h3>Análise Gratuita</h3>
                    <p>Nossos especialistas analisam sua multa sem custo</p>
                </div>
                <div class="step">
                    <div class="step-number">3</div>
                    <h3>Preparamos Recurso</h3>
                    <p>Preparamos toda a documentação necessária</p>
                </div>
                <div class="step">
                    <div class="step-number">4</div>
                    <h3>Recurso Enviado</h3>
                    <p>Enviamos o recurso para você ou direto ao órgão</p>
                </div>
            </div>
        </div>
    </section>

    <!-- BENEFÍCIOS -->
    <section>
        <div class="container">
       
(Content truncated due to size limit. Use line ranges to read remaining content)
