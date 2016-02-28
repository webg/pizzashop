
function something()
	{
		
		var x = window.localStorage.getItem('aaa');

		x = x * 1 + 1;
		
		window.localStorage.setItem('aaa', x);
		
		alert(x);
		
	}

function my_add_to_cart(title)
	{
		alert('Вы добавили пицу ' + title);
	}