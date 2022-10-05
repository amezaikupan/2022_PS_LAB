#Bai 02
//Tinh kha nang co it nhat 1 con so 6 tron n lan thay suc xac
sixes <- function (n){
	for(i in 1:n){
		a = round(runif(1, 1, 6), 0)
		a
		if (a == 6) return (TRUE)
	}
	return (FALSE)
}

//Tinh so thang neu co 1 suc xac trong n lan thay suc xac trong N lan choi
play <- function (n, N){
	win <- 0
	for (i in 1:N){
		if(sixes(n)) win <- win + 1
	}
	
	return (win / N)
}