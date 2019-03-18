# Key questions
* What is a database and are they nice to have?
* What is SQL and why do we care?
* What does CRUD stand for? Creation, read, update, delete
- Create -  INSERT
- Read -    SELECT
- Update -  UPDATE
- Delete -  DELETE
 * How do those operations map to SELECT, INSERT, UPDATE, and DELETE?
* What is a foreign key? What do FK's have to do with Single Source of Truth?
* What do databases have to do with Ruby?

# Intro to SQL

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
  select * from artists

```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
  select * from artists
  where name = 'Black Sabbath' || where name like 'black sabbath'

```
'like' makes query case-insensitive

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans (
	id integer primary KEY,
	name text
	);

```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
ALTER TABLE fans
ADD artist_id integer;
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql
INSERT INTO fans (name, artist_id)
VALUES ('Bill', 169);
```

6. Check out the [Faker gem](https://github.com/stympy/faker). `gem install faker`, open up irb, run `require 'faker'` and then generate a fake name for yourself using `Faker::Name.name`. How would you update your name in the fans table to be your new name?

   ```sql
UPDATE fans
SET name = "Nicolas Cruickshank"
WHERE id = 3
   ```

-----------------

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
select name from fans
where artist_id != 169
```

8. Write the SQL to display an artists name next to their album title

```sql
SELECT artists.name, albums.title
FROM artists, albums
on albums.artist_id = artists.id
```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql

SELECT artists.name, albums.title, count(*) as track_count
FROM artists, albums
on albums.artist_id = artists.id
INNER JOIN tracks on tracks.album_id = albums.id
GROUP BY album_id

```
If you have a count, you must have a GROUP BY

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql
SELECT DISTINCT artists.name
FROM artists
INNER JOIN albums
ON albums.artist_id = artists.id
INNER JOIN tracks on tracks. album_id = albums.id
where tracks.genre_id = 9
```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have move than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql

```
