module ApplicationHelper
  def cell_text game, cell
      board = JSON.parse game.board
      cell_text = board[cell] || ""
      raw link_to(cell_text, "#{register_move_path(game)}?cell=#{cell}")
  end
end
