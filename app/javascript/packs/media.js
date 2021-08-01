$(document).ready(()=>{
    $("#add-media-btn").on("click", function (){
        document.getElementById("add-media-form").style.display = "block";
    })
    $("#save-media").on("click", function (){
        document.getElementById("add-media-form").style.display = "none";
    })
    $("#close-media").on("click", function (){
        document.getElementById("add-media-form").style.display = "none";
    })
    $(".media-slider").on("click", function(){
        console.log("hello");
        this.form.submit();
    })
})