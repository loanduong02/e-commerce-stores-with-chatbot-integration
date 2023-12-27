$('.minus-cart').click(function(){
    var id = $(this).attr("pid").toString();
    var eml = this.parentNode.children[2];
    var currentQuantity = parseInt(eml.innerText);

    if (currentQuantity > 1) {
        decreaseQuantity(id, eml);
    } else {
        if (confirm("Số lượng tối thiểu là 1. Bạn có muốn xóa sản phẩm khỏi hàng không?")) {
            removeProductFromCart(id);
        }
    }
});

function decreaseQuantity(id, eml) {
    $.ajax({
        type: "GET",
        url: "/minuscart",
        data: {
            prod_id: id
        },
        success: function(data) {
            console.log("data =", data);
            eml.innerText = data.quantity;
            document.getElementById("amount").innerText = data.amount;
            document.getElementById("totalamount").innerText = data.totalamount;
        }
    });
}

function removeProductFromCart(id) {
    $.ajax({
        type: "GET",
        url: "/removefromcart",
        data: {
            prod_id: id
        },
        success: function(data) {
            console.log("Product removed from cart");
            // Remove the corresponding product element from the DOM
            // $(`.product-item[pid="${id}"]`).remove();
            var buttonElement = $(`a[pid="${id}"]`);
            var productElement = buttonElement.closest('.row');
            productElement.remove();
            document.getElementById("amount").innerText = data.amount;
            document.getElementById("totalamount").innerText = data.totalamount;
        }
    });
}
