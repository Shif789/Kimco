var x = window.matchMedia("(max-width: 991px)")
myFunction(x) // Call listener function at run time
x.addListener(myFunction) // Attach listener function on state changes
function myFunction(x) {
    if (x.matches) { // If media query matches
        document.querySelector("#primary-menu").classList.add("d-none");
        document.querySelector("#primary-menu-trigger").addEventListener("click", function () {
            document.querySelector("#primary-menu").classList.toggle("d-none");

            document.querySelectorAll(".sub-menu")[0].addEventListener("click", function () {
                if (document.getElementById("l1").style.display == "none") {
                    document.getElementById("l1").style.display = "block";
                } else {
                    document.getElementById("l1").style.display = "none";
                }
                document.getElementById("l2").style.display = "none";
                document.getElementById("l3").style.display = "none";
                document.getElementById("l4").style.display = "none";

            })
            document.querySelectorAll(".sub-menu")[1].addEventListener("click", function () {
                if (document.getElementById("l2").style.display == "none") {
                    document.getElementById("l2").style.display = "block";
                } else {
                    document.getElementById("l2").style.display = "none";
                }
                document.getElementById("l1").style.display = "none";
                document.getElementById("l3").style.display = "none";
                document.getElementById("l4").style.display = "none";
            })
            document.querySelectorAll(".sub-menu")[2].addEventListener("click", function () {
                if (document.getElementById("l3").style.display == "none") {
                    document.getElementById("l3").style.display = "block";
                } else {
                    document.getElementById("l3").style.display = "none";
                }
                document.getElementById("l1").style.display = "none";
                document.getElementById("l2").style.display = "none";
                document.getElementById("l4").style.display = "none";
            })
            document.querySelectorAll(".sub-menu")[3].addEventListener("click", function () {
                if (document.getElementById("l4").style.display == "none") {
                    document.getElementById("l4").style.display = "block";
                } else {
                    document.getElementById("l4").style.display = "none";
                }
                document.getElementById("l1").style.display = "none";
                document.getElementById("l2").style.display = "none";
                document.getElementById("l3").style.display = "none";
            })
        })

    } else {

        document.querySelectorAll(".sub-menu")[0].addEventListener("mouseover", function () {
            document.getElementById("l1").style.display = "block";
            document.getElementById("l2").style.display = "none";
            document.getElementById("l3").style.display = "none";
            document.getElementById("l4").style.display = "none";
            document.querySelectorAll(".sub-menu")[0].addEventListener("mouseout", function () {
                document.getElementById("l1").style.display = "none";
                document.getElementById("l2").style.display = "none";
                document.getElementById("l3").style.display = "none";
                document.getElementById("l4").style.display = "none";
            })
        })
        document.querySelectorAll(".sub-menu")[1].addEventListener("mouseover", function () {
            document.getElementById("l2").style.display = "block";
            document.getElementById("l1").style.display = "none";
            document.getElementById("l3").style.display = "none";
            document.getElementById("l4").style.display = "none";
            document.querySelectorAll(".sub-menu")[1].addEventListener("mouseout", function () {
                document.getElementById("l1").style.display = "none";
                document.getElementById("l2").style.display = "none";
                document.getElementById("l3").style.display = "none";
                document.getElementById("l4").style.display = "none";
            })
        })
        document.querySelectorAll(".sub-menu")[2].addEventListener("mouseover", function () {
            document.getElementById("l3").style.display = "block";
            document.getElementById("l1").style.display = "none";
            document.getElementById("l2").style.display = "none";
            document.getElementById("l4").style.display = "none";
            document.querySelectorAll(".sub-menu")[2].addEventListener("mouseout", function () {
                document.getElementById("l1").style.display = "none";
                document.getElementById("l2").style.display = "none";
                document.getElementById("l3").style.display = "none";
                document.getElementById("l4").style.display = "none";
            })
        })
        document.querySelectorAll(".sub-menu")[3].addEventListener("mouseover", function () {
            document.getElementById("14").style.display = "block";
            document.getElementById("l1").style.display = "none";
            document.getElementById("l2").style.display = "none";
            document.getElementById("l3").style.display = "none";
            document.querySelectorAll(".sub-menu")[3].addEventListener("mouseout", function () {
                document.getElementById("l1").style.display = "none";
                document.getElementById("l2").style.display = "none";
                document.getElementById("l3").style.display = "none";
                document.getElementById("l4").style.display = "none";
            })
        })
    }
}

