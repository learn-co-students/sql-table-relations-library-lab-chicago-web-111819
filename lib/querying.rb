def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
    SELECT title, year FROM books WHERE series_id = 1 ORDER BY year ASC;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
    SELECT name, motto FROM characters WHERE length(motto) = (SELECT MAX(length(motto)) FROM characters);
  SQL
end


def select_value_and_count_of_most_prolific_species
  <<-SQL
    SELECT species, COUNT(species) cnt FROM characters GROUP BY species ORDER BY cnt DESC LIMIT 1;
  SQL
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
    SELECT a.name, sg.name FROM authors a
      JOIN series s ON a.id = s.author_id
      INNER JOIN subgenres sg ON sg.id = s.subgenre_id;
  SQL
end

def select_series_title_with_most_human_characters
  <<-SQL
    SELECT s.title FROM series s
      INNER JOIN characters ch ON s.author_id = ch.author_id
      WHERE ch.species = 'human'
      GROUP BY ch.species
      ORDER BY COUNT(ch.species) LIMIT 1;
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  <<-SQL
    SELECT c.name, COUNT(cb.character_id) cnt FROM characters c
      INNER JOIN character_books cb ON c.id = cb.character_id
      GROUP BY c.name
      ORDER BY cnt DESC, c.name ASC
  SQL
end
