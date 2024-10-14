function selectMode(name, number){
    localStorage.setItem(`mode${number}`, name)
}

function selectPlayer(imagePath, player) {
    localStorage.setItem(`player${player}Image`, imagePath);
}

function goToGame(){
    if (localStorage.getItem('player2Image')) {
        window.location.href = 'game.html';
    } else if (localStorage.getItem('player1Image')) {
        window.location.href = 'game.html';
    }
}

let saveMode = localStorage.getItem('mode1')
if (saveMode.valueOf() == "together")
    window.onload = function() {
        const canvas = document.getElementById("canvas");
        const context = canvas.getContext("2d");
        const scoreDisplay = document.getElementById("score-display");
        const resetButton = document.getElementById("game-reset");

        const img = new Image();
        img.src = "assets/img/i.jpg";
        img.onload = function() {
            context.drawImage(img, 0, 0, canvas.width, canvas.height);
            startAnimation();
        };

        const object1ImageUrl = localStorage.getItem('player1Image');
        const object2ImageUrl = localStorage.getItem('player2Image');
        const object1Image = new Image();
        const object2Image = new Image();
        if (object1ImageUrl) {
            object1Image.src = object1ImageUrl;
        } else {
            object1Image.src = "assets/img/card1.png";
        }
        
        if (object2ImageUrl) {
            object2Image.src = object2ImageUrl;
        } else {
            object2Image.src = "assets/img/card1.png";
        }
        const ballImage = new Image();
        ballImage.src = "assets/img/ball.png";

        let object1 = {
            x: 900,
            y: 500,
            width: 70,
            height: 100,
            speedX: 0,
            speedY: 0,
            image: object1Image
        };

        let object2 = {
            x: 1240,
            y: 500,
            width: 70,
            height: 100,
            speedX: 0,
            speedY: 0,
            image: object2Image
        };

        let ball = {
            x: canvas.width / 2,
            y: canvas.height / 2,
            radius: 20,
            speedX: 2,
            speedY: 2,
            image: ballImage
        };

        let gate1 = {
            x: 115,
            y: 390,
            width: 145,
            height: 290,
            color: "red",
            isOpen: false
        };

        let gate2 = {
            x: 1940,
            y: 390,
            width: 145,
            height: 290,
            color: "blue",
            isOpen: false
        };

        let team1Score = 0;
        let team2Score = 0;

        function startAnimation() {
            function animate() {
                context.clearRect(0, 0, canvas.width, canvas.height);
                context.drawImage(img, 0, 0, canvas.width, canvas.height);

                context.fillStyle = gate1.color;
                context.fillRect(gate1.x, gate1.y, gate1.width, gate1.height);
                context.fillStyle = gate2.color;
                context.fillRect(gate2.x, gate2.y, gate2.width, gate2.height);

                context.drawImage(object1.image, object1.x, object1.y, object1.width, object1.height);
                context.drawImage(object2.image, object2.x, object2.y, object2.width, object2.height);
                context.drawImage(ball.image, ball.x - ball.radius, ball.y - ball.radius, ball.radius * 2, ball.radius * 2);

                object1.x += object1.speedX;
                object1.y += object1.speedY;
                object2.x += object2.speedX;
                object2.y += object2.speedY;
                ball.x += ball.speedX;
                ball.y += ball.speedY;

                handleBorderCollision(object1);
                handleBorderCollision(object2);
                handleBallBorderCollision(ball);
                handleBallCollision(object1, ball);
                handleBallCollision(object2, ball);
                handleGoalScored(gate1, ball, 2);
                handleGoalScored(gate2, ball, 1);
                
                if (team1Score === 5 || team2Score === 5) {
                    scoreDisplay.textContent = `Игра окончена! ${team1Score} : ${team2Score}`;
                    ball.speedX = 0;
                    ball.speedY = 0;
                    resetButton.style.display = "block";
                }else{
                    scoreDisplay.textContent = `${team1Score} : ${team2Score}`;
                }
                
                requestAnimationFrame(animate);
            }

            function handleBorderCollision(obj) {
                if (obj.x <= 0 || obj.x + obj.width >= canvas.width) {
                    obj.speedX = -obj.speedX;
                }
                if (obj.y <= 0 || obj.y + obj.height >= canvas.height) {
                    obj.speedY = -obj.speedY;
                }
            }

            function handleBallBorderCollision(ball) {
                if (ball.x - ball.radius <= 0 || ball.x + ball.radius >= canvas.width) {
                    ball.x = canvas.width / 2;
                    ball.y = canvas.height / 2;
                    ball.speedX = -ball.speedX;
                }
                if (ball.y - ball.radius <= 0 || ball.y + ball.radius >= canvas.height) {
                    ball.x = canvas.width / 2;
                    ball.y = canvas.height / 2;
                    ball.speedY = -ball.speedY;
                }
            }
            

            function handleBallCollision(obj, ball) {
                if (
                    ball.x - ball.radius < obj.x + obj.width &&
                    ball.x + ball.radius > obj.x &&
                    ball.y - ball.radius < obj.y + obj.height &&
                    ball.y + ball.radius > obj.y
                ) {
                    if (ball.speedX > 0 && ball.x + ball.radius <= obj.x + obj.width) {
                        ball.speedX = -ball.speedX;
                    } else if (ball.speedX < 0 && ball.x - ball.radius >= obj.x) {
                        ball.speedX = -ball.speedX;
                    }

                    if (ball.speedY > 0 && ball.y + ball.radius <= obj.y + obj.height) {
                        ball.speedY = -ball.speedY;
                    } else if (ball.speedY < 0 && ball.y - ball.radius >= obj.y) {
                        ball.speedY = -ball.speedY;
                    }
                }
            }

            function handleGoalScored(gate, ball, scoreTeam) {
                if (
                    ball.x - ball.radius >= gate.x &&
                    ball.x + ball.radius <= gate.x + gate.width &&
                    ball.y - ball.radius >= gate.y &&
                    ball.y + ball.radius <= gate.y + gate.height &&
                    ball.x + ball.radius >= gate.x &&
                    ball.x - ball.radius <= gate.x + gate.width
                ) {
                    if (scoreTeam === 1) {
                        team1Score++;
                        console.log(`Команда 1 забивает гол! Счет: ${team1Score} - ${team2Score}`);
                    } else {
                        team2Score++;
                        console.log(`Команда 2 забивает гол! Счет: ${team1Score} - ${team2Score}`);
                    }
            
                    resetPositions();
                }
            }
            
            function resetGame(){
                team1Score = 0;
                team2Score = 0;
                ball.speedX = 2;
                ball.speedY = 2;
                resetButton.style.display = "none";
            }

            function resetPositions() {
                object1.x = 900;
                object1.y = 500;
                object1.speedX = 0;
                object1.speedY = 0;

                object2.x = 1240;
                object2.y = 500;
                object2.speedX = 0;
                object2.speedY = 0;

                ball.x = canvas.width / 2;
                ball.y = canvas.height / 2;
                ball.speedX = 2;
                ball.speedY = 3;
            }

            document.addEventListener("keydown", function(event) {
                switch (event.keyCode) {
                    case 38: // Стрелка вверх
                        object2.speedY = -6;
                        break;
                    case 40: // Стрелка вниз
                        object2.speedY = 6;
                        break;
                    case 37: // Стрелка влево
                        object2.speedX = -6;
                        break;
                    case 39: // Стрелка вправо
                        object2.speedX = 6;
                        break;
                    case 87: // Клавиша "w"
                        object1.speedY = -6;
                        break;
                    case 83: // Клавиша "s"
                        object1.speedY = 6;
                        break;
                    case 65: // Клавиша "a"
                        object1.speedX = -6;
                        break;
                    case 68: // Клавиша "d"
                        object1.speedX = 6;
                        break;
                }
            });

            document.addEventListener("keyup", function(event) {
                switch (event.keyCode) {
                    case 38: // Стрелка вверх
                    case 40: // Стрелка вниз
                        object2.speedY = 0;
                        break;
                    case 37: // Стрелка влево
                    case 39: // Стрелка вправо
                        object2.speedX = 0;
                        break;
                    case 87: // Клавиша "w"
                    case 83: // Клавиша "s"
                        object1.speedY = 0;

                        break;
                    case 65: // Клавиша "a"
                    case 68: // Клавиша "d"
                        object1.speedX = 0;
                        break;
                }
            });

            resetButton.addEventListener('click', () => {
                resetGame();
            });

            animate();
        }
    };
else if (saveMode.valueOf() == "solo"){
    window.onload = function() {
        const canvas = document.getElementById("canvas");
        const context = canvas.getContext("2d");
        const scoreDisplay = document.getElementById("score-display");
        const resetButton = document.getElementById("game-reset");

        const img = new Image();
        img.src = "assets/img/i.jpg";
        img.onload = function() {
            context.drawImage(img, 0, 0, canvas.width, canvas.height);
            startAnimation();
        };

        const object1ImageUrl = localStorage.getItem('player1Image');
        const object2ImageUrl = localStorage.getItem('player2Image');
        const object1Image = new Image();
        const object2Image = new Image();
        if (object1ImageUrl) {
            object1Image.src = object1ImageUrl;
        } else {
            object1Image.src = "assets/img/card1.png";
        }
        
        if (object2ImageUrl) {
            object2Image.src = object2ImageUrl;
        } else {
            object2Image.src = "assets/img/card1.png";
        }
        const ballImage = new Image();
        ballImage.src = "assets/img/ball.png";

        let object1 = {
            x: 900,
            y: 500,
            width: 70,
            height: 70,
            speedX: 0,
            speedY: 0,
            image: object1Image
        };

        let bot = {
            x: 1820,
            y: 700,
            width: 70,
            height: 70,
            speedX: 0,
            speedY: 0,
            image: object2Image
        };

        let ball = {
            x: canvas.width / 2,
            y: canvas.height / 2,
            radius: 20,
            speedX: 2,
            speedY: 2,
            image: ballImage
        };

        let gate1 = {
            x: 115,
            y: 390,
            width: 145,
            height: 290,
            color: "red",
            isOpen: false
        };

        let gate2 = {
            x: 1940,
            y: 390,
            width: 145,
            height: 290,
            color: "blue",
            isOpen: false
        };

        let team1Score = 0;
        let team2Score = 0;
        let matchNumber = 0;

        function startAnimation() {
            function animate() {
                context.clearRect(0, 0, canvas.width, canvas.height);
                context.drawImage(img, 0, 0, canvas.width, canvas.height);
    
                context.fillStyle = gate1.color;
                context.fillRect(gate1.x, gate1.y, gate1.width, gate1.height);
                context.fillStyle = gate2.color;
                context.fillRect(gate2.x, gate2.y, gate2.width, gate2.height);
    
                context.drawImage(object1.image, object1.x, object1.y, object1.width, object1.height);
                context.drawImage(bot.image, bot.x, bot.y, bot.width, bot.height);
                context.drawImage(ball.image, ball.x - ball.radius, ball.y - ball.radius, ball.radius * 2, ball.radius * 2);
    

                object1.x += object1.speedX;
                object1.y += object1.speedY;
                bot.x += bot.speedX;
                bot.y += bot.speedY;
                ball.x += ball.speedX;
                ball.y += ball.speedY;
                handlePlayerMovement(object1);
                handleBotMovement(bot);
    
                handleBorderCollision(object1);
                handleBorderCollision(bot);
                handleBallBorderCollision(ball);
                handleBallCollision(object1, ball);
                handleBallCollision(bot, ball);
                handleGoalScored(gate1, ball, 2);
                handleGoalScored(gate2, ball, 1);

                if (team1Score === 5 || team2Score === 5) {

                    scoreDisplay.textContent = `Игра окончена! ${team1Score} : ${team2Score}`;
                    ball.speedX = 0;
                    ball.speedY = 0;
                    resetButton.style.display = "block";
                }else{
                    scoreDisplay.textContent = `${team1Score} : ${team2Score}`;
                }
    
                requestAnimationFrame(animate);
            }
    
            function handleBorderCollision(obj) {
                if (obj.x <= 0 || obj.x + obj.width >= canvas.width) {
                    obj.speedX = -obj.speedX;
                }
                if (obj.y <= 0 || obj.y + obj.height >= canvas.height) {
                    obj.speedY = -obj.speedY;
                }
            }
    
            function handlePlayerMovement(player) {
                document.addEventListener("keydown", function(event) {
                    switch (event.keyCode) {
                        case 87: // Клавиша "w"
                            object1.speedY = -5;
                            break;
                        case 83: // Клавиша "s"
                            object1.speedY = 5;
                            break;
                        case 65: // Клавиша "a"
                            object1.speedX = -5;
                            break;
                        case 68: // Клавиша "d"
                            object1.speedX = 5;
                            break;
                    }
                });
    
                document.addEventListener("keyup", function(event) {
                    switch (event.keyCode) {
                        case 87: // Клавиша "w"
                        case 83: // Клавиша "s"
                            object1.speedY = 0;
    
                            break;
                        case 65: // Клавиша "a"
                        case 68: // Клавиша "d"
                            object1.speedX = 0;
                            break;
                    }
                });
            }


        function handleBotMovement(bot) {
            const botSpeed = 0.1;
            let upper = 500;
            let lower = 1000;
        
            if (bot.y >= upper) {
                bot.speedY += -1 * botSpeed;
            } else if (bot.y <= lower) {
                bot.speedY += botSpeed;
            } 
        
            bot.speedX = 0;
        }
            
        function handleBallBorderCollision(ball) {
            if (ball.x - ball.radius <= 0 || ball.x + ball.radius >= canvas.width) {
                ball.x = canvas.width / 2;
                ball.y = canvas.height / 2;
                ball.speedX = -ball.speedX;
            }
            if (ball.y - ball.radius <= 0 || ball.y + ball.radius >= canvas.height) {
                ball.x = canvas.width / 2;
                ball.y = canvas.height / 2;
                ball.speedY = -ball.speedY;
            }
        }

        function handleBallCollision(obj, ball) {
            if (
                ball.x - ball.radius < obj.x + obj.width &&
                ball.x + ball.radius > obj.x &&
                ball.y - ball.radius < obj.y + obj.height &&
                ball.y + ball.radius > obj.y
            ) {
                if (ball.speedX > 0 && ball.x + ball.radius <= obj.x + obj.width) {
                    ball.speedX = -ball.speedX;
                } else if (ball.speedX < 0 && ball.x - ball.radius >= obj.x) {
                    ball.speedX = -ball.speedX;
                }

                if (ball.speedY > 0 && ball.y + ball.radius <= obj.y + obj.height) {
                    ball.speedY = -ball.speedY;
                } else if (ball.speedY < 0 && ball.y - ball.radius >= obj.y) {
                    ball.speedY = -ball.speedY;
                }
            }
        }

        function handleGoalScored(gate, ball, team) {
            if (
                ball.x - ball.radius <= gate.x + gate.width &&
                ball.x + ball.radius >= gate.x &&
                ball.y - ball.radius <= gate.y + gate.height &&
                ball.y + ball.radius >= gate.y
            ) {
                if (!gate.isOpen) {
                    if (team === 1) {
                        team1Score++;
                    } else {
                        team2Score++;
                    }

                    if(team1Score === 5 || team2Score === 5){
                        matchNumber ++;
                        localStorage.setItem(`match${matchNumber}`, team1Score);
                    }

                    resetPositions();
                }
            }
        }   

        function resetGame(){
            team1Score = 0;
            team2Score = 0;
            ball.speedX = 2;
            ball.speedY = 2;
            resetButton.style.display = "none";
        }

        function resetPositions() {
            object1.x = 900;
            object1.y = 500;
            object1.speedX = 0;
            object1.speedY = 0;

            ball.x = canvas.width / 2;
            ball.y = canvas.height / 2;
            ball.speedX = 2;
            ball.speedY = 2;
        }

        resetButton.addEventListener('click', () => {
            resetGame();
        });

        animate();
    }
};
}