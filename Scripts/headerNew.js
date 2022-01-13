var x = window.matchMedia("(max-width: 991px)")
myFunction(x) // Call listener function at run time
x.addListener(myFunction) // Attach listener function on state changes
function myFunction(x) {
    if (x.matches) { // If media query matches
        document.querySelector("#primary-menu").classList.add("d-none");
        document.querySelector("#primary-menu-trigger").addEventListener("click", function () {
            document.querySelector("#primary-menu").classList.toggle("d-none");

            document.querySelector("#subM1").addEventListener("click", function () {
                if (document.getElementById("L1").style.display == "none") {
                    document.getElementById("L1").style.display = "block";
                } else {
                    document.getElementById("L1").style.display = "none";
                }
                document.getElementById("L2").style.display = "none";
                document.getElementById("L3").style.display = "none";
                document.getElementById("L4").style.display = "none";

            })
            document.querySelectorAll(".sub-menu")[1].addEventListener("click", function () {
                if (document.getElementById("L2").style.display == "none") {
                    document.getElementById("L2").style.display = "block";
                } else {
                    document.getElementById("L2").style.display = "none";
                }
                document.getElementById("L1").style.display = "none";
                document.getElementById("L3").style.display = "none";
                document.getElementById("L4").style.display = "none";
            })
            document.querySelectorAll(".sub-menu")[2].addEventListener("click", function () {
                if (document.getElementById("L3").style.display == "none") {
                    document.getElementById("L3").style.display = "block";
                } else {
                    document.getElementById("L3").style.display = "none";
                }
                document.getElementById("L1").style.display = "none";
                document.getElementById("L2").style.display = "none";
                document.getElementById("L4").style.display = "none";
            })
            document.querySelectorAll(".sub-menu")[3].addEventListener("click", function () {
                if (document.getElementById("L4").style.display == "none") {
                    document.getElementById("L4").style.display = "block";
                } else {
                    document.getElementById("L4").style.display = "none";
                }
                document.getElementById("L1").style.display = "none";
                document.getElementById("L2").style.display = "none";
                document.getElementById("L3").style.display = "none";
            })
        })

    } else {

        document.querySelectorAll(".sub-menu")[0].addEventListener("mouseover", function () {
            document.getElementById("L1").style.display = "block";
            document.getElementById("L2").style.display = "none";
            document.getElementById("L3").style.display = "none";
            document.getElementById("L4").style.display = "none";
            document.querySelectorAll(".sub-menu")[0].addEventListener("mouseout", function () {
                document.getElementById("L1").style.display = "none";
                document.getElementById("L2").style.display = "none";
                document.getElementById("L3").style.display = "none";
                document.getElementById("L4").style.display = "none";
            })
        })
        document.querySelectorAll(".sub-menu")[1].addEventListener("mouseover", function () {
            document.getElementById("L2").style.display = "block";
            document.getElementById("L1").style.display = "none";
            document.getElementById("L3").style.display = "none";
            document.getElementById("L4").style.display = "none";
            document.querySelectorAll(".sub-menu")[1].addEventListener("mouseout", function () {
                document.getElementById("L1").style.display = "none";
                document.getElementById("L2").style.display = "none";
                document.getElementById("L3").style.display = "none";
                document.getElementById("L4").style.display = "none";
            })
        })
        document.querySelectorAll(".sub-menu")[2].addEventListener("mouseover", function () {
            document.getElementById("L3").style.display = "block";
            document.getElementById("L1").style.display = "none";
            document.getElementById("L2").style.display = "none";
            document.getElementById("L4").style.display = "none";
            document.querySelectorAll(".sub-menu")[2].addEventListener("mouseout", function () {
                document.getElementById("L1").style.display = "none";
                document.getElementById("L2").style.display = "none";
                document.getElementById("L3").style.display = "none";
                document.getElementById("L4").style.display = "none";
            })
        })
        document.querySelectorAll(".sub-menu")[3].addEventListener("mouseover", function () {
            document.getElementById("L4").style.display = "block";
            document.getElementById("L1").style.display = "none";
            document.getElementById("L2").style.display = "none";
            document.getElementById("L3").style.display = "none";
            document.querySelectorAll(".sub-menu")[3].addEventListener("mouseout", function () {
                document.getElementById("L1").style.display = "none";
                document.getElementById("L2").style.display = "none";
                document.getElementById("L3").style.display = "none";
                document.getElementById("L4").style.display = "none";
            })
        })
    }
}

