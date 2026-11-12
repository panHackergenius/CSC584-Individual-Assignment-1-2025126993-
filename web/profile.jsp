
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Personal Profile</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #100b2e;
            margin: 0;
            padding: 30px 15px;
            min-height: 100vh;
            position: relative;
            isolation: isolate;
            overflow-x: hidden;
        }

        /* Moving Neon Background */
        body::before {
            content: "";
            position: fixed;
            width: 200%;
            height: 200%;
            top: -50%;
            left: -50%;

            background: conic-gradient(
                transparent,
                #8a2be2,
                #00e5ff,
                transparent,
                #ff00cc,
                #8a2be2,
                transparent
            );

            filter: blur(80px);
            opacity: 0.55;
            animation: neonMove 12s linear infinite;
            z-index: -1;
            pointer-events: none;
        }

        /* Background Animation */
        @keyframes neonMove {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }

        /* Profile Container */
        .container {
            background: white;
            max-width: 550px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 15px;

            animation: neonGlow 3s infinite alternate;
        }

        /* Neon Glow Animation */
        @keyframes neonGlow {
            0% {
                box-shadow:
                    0 0 10px #764ba2,
                    0 0 20px #a855f7;
            }

            50% {
                box-shadow:
                    0 0 20px #c084fc,
                    0 0 40px #9333ea;
            }

            100% {
                box-shadow:
                    0 0 30px #e9d5ff,
                    0 0 50px #a855f7,
                    0 0 70px #764ba2;
            }
        }

        h1 {
            text-align: center;
            color: #764ba2;
            margin-bottom: 25px;
        }

        .info {
            background: #f5f2fa;
            padding: 15px;
            margin: 15px 0;
            border-radius: 8px;
            color: #333;
            overflow-wrap: anywhere;
        }

        .info strong {
            color: #5b3c99;
        }

        .intro {
            line-height: 1.6;
        }

        .intro p {
            margin-top: 12px;
        }

        /* Back Button */
        .back-button {
            display: block;
            text-align: center;
            background: #764ba2;
            color: white;
            padding: 13px;
            border-radius: 8px;
            text-decoration: none;
            margin-top: 25px;
            transition: 0.3s;
        }

        .back-button:hover {
            background: #5b3c99;
            box-shadow:
                0 0 15px #a855f7,
                0 0 25px #9333ea;
            transform: translateY(-2px);
        }

        /* Mobile Responsive */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
                margin: 15px auto;
            }

            h1 {
                font-size: 24px;
            }
        }

    </style>
</head>

<body>

    <div class="container">

        <h1>My Personal Profile</h1>

        <div class="info">
            <strong>Full Name:</strong>
            ${name}
        </div>

        <div class="info">
            <strong>Student ID:</strong>
            ${studentId}
        </div>

        <div class="info">
            <strong>Programme:</strong>
            ${programme}
        </div>

        <div class="info">
            <strong>Email Address:</strong>
            ${email}
        </div>

        <div class="info">
            <strong>Hobbies:</strong>
            ${hobbies}
        </div>

        <div class="info intro">
            <strong>About Me:</strong>
            <p>${introduction}</p>
        </div>

        <a href="index.html" class="back-button">
            Back to Profile Form
        </a>

    </div>

</body>
</html>
