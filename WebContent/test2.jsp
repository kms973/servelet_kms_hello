<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>게임사이트</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#lotto").click(function () {
                var lotto = [];

                while (lotto.length < 6) {
                    var num = Math.round((Math.random() * 45) + 1);
                    if (lotto.indexOf(num) < 0) {
                        lotto.push(num)
                    }

                }

                lotto.sort(function (a, b) {
                    if (a > b) return 1;
                    if (a === b) return 0;
                    if (a < b) return -1;
                });


                $("#rcpcard").remove();
                $(".rounded-circle").remove();
                for (var i = 0; i < 6; i++)

                    $("#main").append('<span class="rounded-circle">' + lotto[i] + '</span>');
            })

            $("#rcp").click(function () {
                $(".rounded-circle").remove();
                $("#rcpcard").remove();
                $("#main").append(
                    $('<div id = "rcpcard"></div>').append(
                        $('<div id="pcard" class="card" style="width:300px"></div>')
                            .append($('<img id="playercard" class="card-img-top" src="images/보.jpg" alt="Card image">'))
                            .append($('<div class="card-body"></div>')
                                .append($('<h4 class="card-title">나</h4>')
                                    .append($('<p class="card-text">무엇을 낼까?</p>'))
                                    .append($('<div class="btn-group"></div>')
                                        .append('<button id="scissor" type="button" class="btn btn-primary">가위</button>')
                                        .append('<button id="paper" type="button" class="btn btn-primary">보</button>')
                                        .append('<button id="rock" type="button" class="btn btn-primary">바위</button>'))
                                )

                            )





                    ).append($('<div class="card" style="width:300px"></div>')
                        .append($('<img id="playercard" class="card-img-top" src="images/심판.jpg" alt="Card image">'))
                        .append($('<div class="card-body"></div>')
                            .append($('<h4 class="card-title">심판</h4>')
                                .append($('<p id="result" class="card-text">누가이길까?</p>'))
                                .append($('<div class="btn-group"></div>')
                                    .append('<button id="scissor" type="button" class="btn btn-primary">가위</button>')
                                    .append('<button id="paper" type="button" class="btn btn-primary">보</button>')
                                    .append('<button id="rock" type="button" class="btn btn-primary">바위</button>'))
                            )

                        )).append($('<div id="comcard" class="card" style="width:300px"></div>')
                            .append($('<img id="computercard" class="card-img-top" src="images/바위.jpg" alt="Card image">'))
                            .append($('<div class="card-body"></div>')
                                .append($('<h4 class="card-title">상대</h4>')
                                    .append($('<p class="card-text">무엇을 낼까?</p>'))
                                    .append($('<div class="btn-group"></div>')
                                        .append('<button type="button" class="btn btn-primary">가위</button>')
                                        .append('<button type="button" class="btn btn-primary">보</button>')
                                        .append('<button type="button" class="btn btn-primary">바위</button>'))
                                )

                            ))
                );


                $("#rock").click(function () {
                    function result() {
                        if (rock[player] == rock[computer]) {
                            return "비겼습니다.";
                        } else if (((rock[player] == "가위") && (rock[computer] == "바위")) ||
                            ((rock[player] == "바위") && (rock[computer] == "보")) ||
                            ((rock[player] == "보") && (rock[computer] == "가위"))) {
                            return "졌습니다."
                        } else {
                            return "이겼습니다."
                        }
                    }

                    var rock = ["가위", "바위", "보"]

                    var player = 1;
                    var computer = Math.round(Math.random() * 2);

                    $("#computercard").remove();
                    if (computer == 0) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/가위.jpg" alt="Card image">')
                    } else if (computer == 1) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/바위.jpg" alt="Card image">')
                    } else if (computer == 2) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/보.jpg" alt="Card image">')
                    }
                    $("#playercard").remove();
                    $("#pcard").prepend('<img id="playercard" class="card-img-top" src="images/바위.jpg" alt="Card image">')
                    $("#result").text(result());
                })

                $("#paper").click(function () {
                    function result() {
                        if (rock[player] == rock[computer]) {
                            return "비겼습니다.";
                        } else if (((rock[player] == "가위") && (rock[computer] == "바위")) ||
                            ((rock[player] == "바위") && (rock[computer] == "보")) ||
                            ((rock[player] == "보") && (rock[computer] == "가위"))) {
                            return "졌습니다."
                        } else {
                            return "이겼습니다."
                        }
                    }

                    var rock = ["가위", "바위", "보"]

                    var player = 2;
                    var computer = Math.round(Math.random() * 2);


                    $("#computercard").remove();
                    if (computer == 0) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/가위.jpg" alt="Card image">')
                    } else if (computer == 1) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/바위.jpg" alt="Card image">')
                    } else if (computer == 2) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/보.jpg" alt="Card image">')
                    }
                    $("#playercard").remove();
                    $("#pcard").prepend('<img id="playercard" class="card-img-top" src="images/보.jpg" alt="Card image">')
                    $("#result").text(result());
                })

                $("#scissor").click(function () {
                    function result() {
                        if (rock[player] == rock[computer]) {
                            return "비겼습니다.";
                        } else if (((rock[player] == "가위") && (rock[computer] == "바위")) ||
                            ((rock[player] == "바위") && (rock[computer] == "보")) ||
                            ((rock[player] == "보") && (rock[computer] == "가위"))) {
                            return "졌습니다."
                        } else {
                            return "이겼습니다."
                        }
                    }

                    var rock = ["가위", "바위", "보"]

                    var player = 0;
                    var computer = Math.round(Math.random() * 2);


                    $("#computercard").remove();
                    if (computer == 0) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/가위.jpg" alt="Card image">')
                    } else if (computer == 1) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/바위.jpg" alt="Card image">')
                    } else if (computer == 2) {
                        $("#comcard").prepend('<img id="computercard" class="card-img-top" src="images/보.jpg" alt="Card image">')
                    }
                    $("#playercard").remove();
                    $("#pcard").prepend('<img id="playercard" class="card-img-top" src="images/가위.jpg" alt="Card image">')
                    $("#result").text(result());
                })
            })

        })


    </script>


    <style>
        main {
            text-align: center;
            padding: 13em;
        }

        .rounded-circle {
            display: inline-block;

            text-align: center;
            line-height: 5em;
            color: aliceblue;
            font-size: 2em;
            width: 5em;
            height: 5em;
            margin: 7px;
            background-color: #723535;
        }

        .card {
            display: inline-block;
        }

        footer {
            text-align: center;
        }
    </style>

</head>

<body>
    <header>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">게임사이트</a>
                    </li>
                    <li class="nav-item">
                        <a id="lotto" class="nav-link" href="#">로또</a>
                    </li>
                    <li class="nav-item">
                        <a id="rcp" class="nav-link" href="#">가위바위보</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <main id="main">
        <!-- <span class="rounded-circle">11</span>
        <span class="rounded-circle">12</span>
        <span class="rounded-circle">13</span>
        <span class="rounded-circle">14</span>
        <span class="rounded-circle">15</span>
        <span class="rounded-circle">16</span> -->
        <!-- <div class="btn-group">
            <button type="button" class="btn btn-primary">Apple</button>
            <button type="button" class="btn btn-primary">Samsung</button>
            <button type="button" class="btn btn-primary">Sony</button>
          </div> -->


        <!-- <div id="rcpcard">
            <div id="pcard" class="card" style="width:300px">
                <img id="playercard" class="card-img-top" src="images/보.jpg" alt="Card image">
                <div class="card-body">
                    <h4 class="card-title">나</h4>
                    <p class="card-text">Some example text.</p>
                    <div class="btn-group">
                        <button id="scissor" type="button" class="btn btn-primary">가위</button>
                        <button id="paper" type="button" class="btn btn-primary">보</button>
                        <button id="rock" type="button" class="btn btn-primary">바위</button>
                    </div>
                </div>
            </div>

            <div class="card" style="width:300px">
                <img class="card-img-top" src="images/심판.jpg" alt="Card image">
                <div class="card-body">
                    <h4 class="card-title">심판</h4>
                    <p id="result" class="card-text">Some example text.</p>
                    <a href="#" class="btn btn-primary">심판</a>
                </div>
            </div>

            <div id="comcard" class="card" style="width:300px">
                <img id="computercard" class="card-img-top" src="images/바위.jpg" alt="Card image">
                <div class="card-body">
                    <h4 class="card-title">상대</h4>
                    <p class="card-text">Some example text.</p>
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary">가위</button>
                        <button type="button" class="btn btn-primary">보</button>
                        <button type="button" class="btn btn-primary">바위</button>
                    </div>
                </div>
            </div>
        </div> -->



        <!-- <div class="btn-group">
            <button type="button" class="btn btn-primary">Apple</button>
            <button type="button" class="btn btn-primary">Samsung</button>
            <button type="button" class="btn btn-primary">Sony</button>
        </div>   -->
    </main>



    <footer>
        <hr>
        <address>Copyright ⓒ. All rights reserved.</address>
    </footer>
</body>

</html>