extends Node2D
# pode é o nosso limitador para os itens nao spawnarem a cada frame 
var pode = true
var pode2 = true
var pode3 = true
var pode4 = true
func _process(delta):
	# Quando o player terminar de pegar os 5 itens e vai spawnar mais 5 
	if tempo.pontos == 500:
		var cena =load("res://World/Mini-games/Pacman/Itens/Scenes/Iten1.tscn")
		var iten1 = cena.instance()
		var cena2 =load("res://World/Mini-games/Pacman/Itens/Scenes/Iten2.tscn")
		var iten2 = cena.instance()
		var cena3 =load("res://World/Mini-games/Pacman/Itens/Scenes/Iten3.tscn")
		var iten3 = cena.instance()
		var cena4 =load("res://World/Mini-games/Pacman/Itens/Scenes/Iten4.tscn")
		var iten4 = cena.instance()
		var cena5 =load("res://World/Mini-games/Pacman/Itens/Scenes/Iten5.tscn")
		var iten5 = cena.instance()
		if pode:
			add_child(iten1)
			iten1.position = Vector2(342,102)
			add_child(iten2)
			iten2.position = Vector2(302,183)
			add_child(iten3)
			iten3.position = Vector2(185,105)
			add_child(iten4)
			iten4.position = Vector2(60,40)
			add_child(iten5)
			iten5.position = Vector2(299,40)
			pode = false
	#quando o player terminar de pegar os 5 itens e vai spawnar masi 5 
	if tempo.pontos == 1000:
		var cenaCola1 = load("res://World/Mini-games/Pacman/Itens/Scenes/Cola.tscn")
		var cola1 = cenaCola1.instance()
		var cenaCola2 = load("res://World/Mini-games/Pacman/Itens/Scenes/Cola2.tscn")
		var cola2 = cenaCola2.instance()
		var cenaCola3 = load("res://World/Mini-games/Pacman/Itens/Scenes/Cola3.tscn")
		var cola3 = cenaCola3.instance()
		var cenaCola4 = load("res://World/Mini-games/Pacman/Itens/Scenes/Cola4.tscn")
		var cola4 = cenaCola4.instance()
		var cenaCola5 = load("res://World/Mini-games/Pacman/Itens/Scenes/Cola5.tscn")
		var cola5 = cenaCola5.instance()
		if pode2:
			add_child(cola1)
			cola1.position = Vector2(100,133)
			add_child(cola2)
			cola2.position = Vector2(302,163)
			add_child(cola3)
			cola3.position = Vector2(201,85)
			add_child(cola4)
			cola4.position = Vector2(44,80)
			add_child(cola5)
			cola5.position = Vector2(199,200)
			pode2 = false
	#quando o player terminar de pegar os 5 itens e vai spawnar masi 5 
	if tempo.pontos == 1500:
		var cenaVinho1 = load("res://World/Mini-games/Pacman/Itens/Scenes/Vinho.tscn")
		var vinho1 = cenaVinho1.instance()
		var cenaVinho2 = load("res://World/Mini-games/Pacman/Itens/Scenes/Vinho2.tscn")
		var vinho2 = cenaVinho2.instance()
		var cenaVinho3 = load("res://World/Mini-games/Pacman/Itens/Scenes/Vinho3.tscn")
		var vinho3 = cenaVinho3.instance()
		var cenaVinho4 = load("res://World/Mini-games/Pacman/Itens/Scenes/Vinho4.tscn")
		var vinho4 = cenaVinho4.instance()
		var cenaVinho5 = load("res://World/Mini-games/Pacman/Itens/Scenes/Vinho5.tscn")
		var vinho5 = cenaVinho5.instance()
		if pode3:
			add_child(vinho1)
			vinho1.position = Vector2(100,133)
			add_child(vinho2)
			vinho2.position = Vector2(180,90)
			add_child(vinho3)
			vinho3.position = Vector2(60, 200)
			add_child(vinho4)
			vinho4.position = Vector2(44,80)
			add_child(vinho5)
			vinho5.position = Vector2(199,150)
			pode3 = false
	#quando o player terminar de pegar os 5 itens e vai spawnar o lixo para terminar a fase 
	if tempo.pontos == 2000:
		var cenaLixo = load("res://World/Mini-games/Pacman/Itens/Scenes/Lixo.tscn")
		var lixo = cenaLixo.instance()
		if pode4:
			add_child(lixo)
			lixo.position = Vector2(208, 128)
			pode4 = false

