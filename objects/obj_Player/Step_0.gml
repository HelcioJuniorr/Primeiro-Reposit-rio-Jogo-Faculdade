// Criação de Objetos
// Obj_Player (Player)

// Adicione um evento Create para inicializar as variáveis de movimentação
 // Velocidade de movimentação

// Adicione um evento Step para lidar com a movimentação do jogador
var moveX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var moveY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if (moveX != 0 || moveY != 0) {
    // Calcula o novo x e y baseado na velocidade e direção
    var new_x = x + moveX * speed;
    var new_y = y + moveY * speed;

    // Verifica a colisão com outros objetos (pode ser personalizado de acordo com sua necessidade)
    if (!place_meeting(new_x, new_y, Obj_Wall)) {
        // Se não houver colisão, atualiza a posição
        x = new_x;
        y = new_y;
    }
}

// Obj_Wall (Parede)

// Nenhuma ação necessária aqui, a menos que você queira adicionar funcionalidades específicas para as paredes.

