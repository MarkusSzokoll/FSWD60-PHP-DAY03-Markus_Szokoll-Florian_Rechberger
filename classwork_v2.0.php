<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
  <title>Add Record to User Table Form</title>
  </head>
  <body>
  <?php
    class Cigarettes
    {
      public $name;
      public $package_size;
      public $tar_amt;
      public $nicotine_amt;

	      function __construct($name, $package_size, $tar_amt, $nicotine_amt)
	      {
	        $this->name= $name;
	        $this->package_size = $package_size;
	        $this->tar_amt = $tar_amt;
	        $this->nicotine_amt = $nicotine_amt;
	      }

		  public function showDetails() {
//		      return 'The cigarette brand is  ' . $this->name .
//		      ' and has ' . $this->package_size . ' cigarettes in a package' .
//		      ', it includes ' . $this->tar_amt . ' mg of tar and '  .
//		      $this->nicotine_amt . ' mg of nicotine. ';

		  	return '<tr><td>' . $this->name . '</td><td>' . $this->package_size . '</td><td>' . $this->tar_amt . '</td><td>' . $this->nicotine_amt . '</td></tr>';
	      }


    }
    $my_cigarettes[0] = new Cigarettes("Memphis", "20", "10", "0.8");
    $my_cigarettes[1] = new Cigarettes("Happy Monkey", 20, 8, 0.7);
    $my_cigarettes[2] = new Cigarettes("Hard Breathing", 19, 15, 0.5);
    $my_cigarettes[3] = new Cigarettes("Lucky Strike", 19, 6, 0.2);
    $my_cigarettes[4] = new Cigarettes("Cameleon", 21, 9, 0.6);
    
    echo '<table><tr><th>name</th><th>package size</th><th>tar (mg)</th><th>nicotine (mg)</th></tr>';
    foreach ($my_cigarettes as $row) {
    	echo $row->showDetails();
    }
    echo '</table>';
    	/*
      echo "<br>";
      echo $row->name;
      echo "<br>";
      echo $row->package_size;
      echo "<br>";
      echo $row->tar_amt;
      echo "<br>";
      echo $row->nicotine_amt;
      echo "<hr>";
      */
      
    class Cigars extends Cigarettes {
      public $length;
      public $width;
      public $country;
      public $storage_humidity;

      function __construct($name, $package_size, $tar_amt, $nicotine_amt, $length, $width, $country, $storage_humidity)
        {
          parent::__construct($name, $package_size, $tar_amt, $nicotine_amt);
          $this->length= $length;
          $this->width = $width;
          $this->country = $country;
          $this->storage_humidity = $storage_humidity;
        }

      public function showDetails() {
  /*        return 'The cigar brand is  ' . $this->name .
          ' and has ' . $this->package_size . ' cigars in a package, it includes ' . $this->tar_amt . ' mg of tar and ' . $this->nicotine_amt . ' mg of nicotine. You may be surprised that cigars are bigger than cigarettes. This certain type, for example is ' . $this->width . 'mm wide, and' . $this->length . 'mm long. The country of origin is ' . $this->country . ', but it\'s available for all cigar lovers around the world. Just pay attention to store them in container providing a humidity of ' . $this->storage_humidity . '%.';
*/
          return '<tr><td>' . $this->name . '</td><td>' . $this->package_size . '</td><td>' . $this->tar_amt . '</td><td>' . $this->nicotine_amt . '</td><td>' . $this->length . '</td><td>' . $this->width . '</td><td>' . $this->country . '</td><td>' . $this->storage_humidity . '</td></tr>';
        }

      }

    $my_cigars[0] = new Cigars("Fat Murphy", 20, 10, 0.8, 120, 20, "Cuba", 60);
    $my_cigars[1] = new Cigars("Havanna", 20, 8, 0.7, 80, 20, "Code Factory", 60);
    $my_cigars[2] = new Cigars("Big Mama", 19, 15, 0.5, 150, 1.3, "Sadtpark", 60);
    $my_cigars[3] = new Cigars("Smoking Lolly", 19, 6, 0.2, 90, 20, "World Wide Web", 60);
    $my_cigars[4] = new Cigars("Little Joe", 21, 9, 0.6, 60, 30, "Austria", 60);

	echo '<table><tr><th>name</th><th>package size</th><th>tar (mg)</th><th>nicotine (mg)</th><th>length</th><th>width</th><th>country</th><th>storage humidity</th></tr>';
    foreach ($my_cigars as $row) {
    	echo $row->showDetails();
    }
    echo '</table>';



  ?>
  </body>
</html>