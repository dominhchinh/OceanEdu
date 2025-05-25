-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2025 at 10:06 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocean_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `idcreated` int NOT NULL,
  `createdat` int NOT NULL,
  `updatedat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `image`, `idcreated`, `createdat`, `updatedat`) VALUES
(1, 'Foods', 'https://cleverads.vn/blog/wp-content/uploads/2023/10/thi-truong-healthy-food-1.jpg', 2, 1700016360, 1742277385),
(2, 'Fruits', 'https://www.euroschoolindia.com/wp-content/uploads/2023/04/ways-to-eat-more-fruit.jpg', 2, 1700016360, 1700016360),
(3, 'Nature', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg', 2, 1700016360, 1700016360),
(4, 'School', 'https://jaxtina.com/wp-content/uploads/2021/11/school1.jpg', 2, 1700016360, 1700016360),
(5, 'Entertainment', 'https://pick-kart.com/wp-content/uploads/2022/01/350x215-FEAT-in-post-Entertainment.jpg', 2, 1700016360, 1702475287),
(6, 'Violon', 'https://vietthanhcenter.vn/resource/gellary/images/content/cau-tao-va-thanh-phan-chinh-dan-violon.jpg', 2, 1702475381, 1742211403);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sound` varchar(255) NOT NULL,
  `idtopic` int NOT NULL,
  `idcreated` int NOT NULL,
  `idshared` int NOT NULL,
  `createdat` int NOT NULL,
  `updatedat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `name`, `image`, `sound`, `idtopic`, `idcreated`, `idshared`, `createdat`, `updatedat`) VALUES
(1, 'A', 'https://i.ibb.co/G9tbWnM/a.png', 'A', 1, 2, 2, 1705891807, 1742277624),
(2, 'B', 'https://i.ibb.co/mSNTm7k/b.png', 'B', 1, 2, 2, 1705891807, 1705891807),
(3, 'C', 'https://i.ibb.co/0cbsVvP/c.png', 'C', 1, 2, 2, 1705891807, 1705891807),
(4, 'D', 'https://i.ibb.co/9pJrqPp/d.png', 'D', 1, 2, 2, 1705891807, 1705891807),
(5, 'E', 'https://i.ibb.co/XJnSbLF/e.png', 'E', 1, 2, 2, 1705891807, 1705891807),
(6, 'F', 'https://i.ibb.co/Xbtk9TN/f.png', 'F', 1, 2, 2, 1705891807, 1705891807),
(7, 'G', 'https://i.ibb.co/wKPDq1M/g.png', 'G', 1, 2, 2, 1705891807, 1705891807),
(8, 'H', 'https://i.ibb.co/sFqjttY/h.png', 'H', 1, 2, 2, 1705891807, 1705891807),
(9, 'I', 'https://i.ibb.co/7Rmk5R1/i.png', 'I', 1, 2, 2, 1705891807, 1705891807),
(10, 'J', 'https://i.ibb.co/s9W33M5/j.png', 'J', 1, 2, 2, 1705891807, 1705891807),
(11, 'K', 'https://i.ibb.co/vmhP7N3/k.png', 'K', 1, 2, 2, 1705891807, 1705891807),
(12, 'L', 'https://i.ibb.co/3Cx34PX/l.png', 'L', 1, 2, 2, 1705891807, 1705891807),
(13, 'M', 'https://i.ibb.co/8sbdMxj/m.png', 'M', 1, 2, 2, 1705891807, 1705891807),
(14, 'N', 'https://i.ibb.co/bWg15L5/n.png', 'N', 1, 2, 2, 1705891807, 1705891807),
(15, 'P', 'https://i.ibb.co/FbNBHtv/p.png', 'P', 1, 2, 2, 1705891807, 1705891807),
(16, 'O', 'https://i.ibb.co/zfsw9LR/o.png', 'O', 1, 2, 2, 1705891807, 1705891807),
(17, 'R', 'https://i.ibb.co/qnP5sYy/r.png', 'R', 1, 2, 2, 1705891807, 1705891807),
(18, 'S', 'https://i.ibb.co/QvbTgkq/s.png', 'S', 1, 2, 2, 1705891807, 1705891807),
(19, 'T', 'https://i.ibb.co/ynK9bSY/t.png', 'T', 1, 2, 2, 1705891807, 1705891807),
(20, 'U', 'https://png.pngtree.com/png-clipart/20240828/original/pngtree-letter-u-uppercase-3d-art-png-image_15871247.png', 'U', 1, 2, 2, 1705891807, 1705891807),
(21, 'V', 'https://i.ibb.co/vQNDMbs/v.png', 'V', 1, 2, 2, 1705891807, 1705891807),
(22, 'W', 'https://i.ibb.co/3rxx5S0/w.png', 'W', 1, 2, 2, 1705891807, 1705891807),
(23, 'X', 'https://i.ibb.co/xLB8PXd/x.png', 'X', 1, 2, 2, 1705891807, 1705891807),
(24, 'Y', 'https://i.ibb.co/9cF3SzJ/y.png', 'Y', 1, 2, 2, 1705891807, 1705891807),
(25, 'Z', 'https://i.ibb.co/P9zr5TJ/z.png', 'Z', 1, 2, 2, 1705891807, 1705891807),
(26, 'Z', 'https://i.ibb.co/P9zr5TJ/z.png', 'Z', 1, 2, 2, 1705891807, 1705891807),
(27, 'Bear', 'https://i.ibb.co/S5mzBmT/bear.png', 'Bear', 2, 2, 2, 1705891807, 1705891807),
(28, 'Monkey', 'https://i.ibb.co/7vLbVF3/chimpanzee.png', 'Monkey', 2, 2, 2, 1705891807, 1705891807),
(29, 'Crow', 'https://i.ibb.co/jkn3Wzv/crow.png', 'Crow', 2, 2, 2, 1705891807, 1705891807),
(30, 'Chipmuck', 'https://i.ibb.co/GkdXD3C/chipmuck.png', 'Chipmuck', 2, 2, 2, 1705891807, 1705891807),
(31, 'Eagle', 'https://i.ibb.co/X3x1mKZ/eagle.png', 'Eagle', 2, 2, 2, 1705891807, 1705891807),
(32, 'Elephant', 'https://i.ibb.co/sm78B7b/elephant.png', 'Elephant', 2, 2, 2, 1705891807, 1705891807),
(33, 'Fish', 'https://i.ibb.co/Sxj9nTL/f-fish.png', 'Fish', 2, 2, 2, 1705891807, 1705891807),
(34, 'Horse', 'https://i.ibb.co/86YvnRc/h-horse.png', 'Horse', 2, 2, 2, 1705891807, 1705891807),
(35, 'Hornbill', 'https://i.ibb.co/rMBQtB9/hornbill.png', 'Hornbill', 2, 2, 2, 1705891807, 1705891807),
(36, 'Hyena', 'https://i.ibb.co/0r1nGrQ/hyena.png', 'Hyena', 2, 2, 2, 1705891807, 1705891807),
(37, 'Eagle', 'https://i.ibb.co/X3x1mKZ/eagle.png', 'Eagle', 3, 2, 2, 1705891807, 1705891807),
(38, 'Crow', 'https://i.ibb.co/jkn3Wzv/crow.png', 'Crow', 3, 2, 2, 1705891807, 1705891807),
(39, 'Owl', 'https://i.ibb.co/jD0nmSc/owl.png', 'Owl', 3, 2, 2, 1705891807, 1705891807),
(40, 'Peacock', 'https://i.ibb.co/tmSc8Ts/peacock.png', 'Peacock', 3, 2, 2, 1705891807, 1705891807),
(41, 'Pheasant', 'https://i.ibb.co/8bD73Jq/pheasant.png', 'Pheasant', 3, 2, 2, 1705891807, 1705891807),
(42, 'Pigeon', 'https://i.ibb.co/JsDK5k9/pigeon.png', 'Pigeon', 3, 2, 2, 1705891807, 1705891807),
(43, 'Puffin', 'https://i.ibb.co/QpP6CZ0/puffin.png', 'Puffin', 3, 2, 2, 1705891807, 1705891807),
(44, 'Robin', 'https://i.ibb.co/SdfYnVj/robin.png', 'Robin', 3, 2, 2, 1705891807, 1705891807),
(45, 'Swallow', 'https://i.ibb.co/P4tQpj5/swallow.png', 'Swallow', 3, 2, 2, 1705891807, 1705891807),
(46, 'Sparrow', 'https://i.ibb.co/th59P72/sparrow.png', 'Sparrow', 3, 2, 2, 1705891807, 1705891807),
(47, 'Bread', 'https://i.ibb.co/1zzX1Cy/bread.png', 'Bread', 4, 2, 2, 1705891807, 1705891807),
(48, 'Cake', 'https://i.ibb.co/m5sRb8r/cake.png', 'Cake', 4, 2, 2, 1705891807, 1705891807),
(49, 'Cheese', 'https://i.ibb.co/zVGJVKf/cheese.png', 'Cheese', 4, 2, 2, 1705891807, 1705891807),
(50, 'Coffee', 'https://i.ibb.co/g4SsFcy/coffee.png', 'Coffee', 4, 2, 2, 1705891807, 1705891807),
(51, 'Hamburger', 'https://i.ibb.co/sq5Mxkk/hamburger.png', 'Hamburger', 4, 2, 2, 1705891807, 1705891807),
(52, 'Bread', 'https://i.ibb.co/1zzX1Cy/bread.png', 'Bread', 4, 2, 2, 1705891807, 1705891807),
(53, 'Orange', 'https://i.ibb.co/SK6P77H/orange.png', 'Orange', 4, 2, 2, 1705891807, 1705891807),
(54, 'Sandwich', 'https://i.ibb.co/2KRVM0b/sandwich.png', 'Sandwich', 4, 2, 2, 1705891807, 1705891807),
(55, 'Pizza', 'https://i.ibb.co/ySVLmDL/pizza.png', 'Pizza', 4, 2, 2, 1705891807, 1705891807),
(56, 'Soup', 'https://i.ibb.co/6v3zbgk/soup.png', 'Soup', 4, 2, 2, 1705891807, 1705891807),
(57, 'Orange', 'https://i.ibb.co/SK6P77H/orange.png', 'Orange', 5, 2, 2, 1705891807, 1705891807),
(58, 'Apple', 'https://i.ibb.co/QN3FrGG/apple.png', 'Apple', 5, 2, 2, 1705891807, 1705891807),
(59, 'Avocado', 'https://i.ibb.co/BcsWzwy/avocado.png', 'Avocado', 5, 2, 2, 1705891807, 1705891807),
(60, 'Cherry', 'https://i.ibb.co/z8g8xG6/cherry.png', 'Cherry', 5, 2, 2, 1705891807, 1705891807),
(61, 'Grape', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSH71ghbltNLPy0lBFqdJD0w4oQMTtYw2SGw&s', 'Grape', 5, 2, 2, 1705891807, 1705891807),
(62, 'Kiwi', 'https://i.ibb.co/cDH01nZ/kiwi.png', 'Kiwi', 5, 2, 2, 1705891807, 1705891807),
(63, 'Lemon', 'https://i.ibb.co/kMMxDPS/lemon.png', 'Lemon', 5, 2, 2, 1705891807, 1705891807),
(64, 'Orange', 'https://i.ibb.co/pQR6WYz/o-orange.png', 'Orange', 5, 2, 2, 1705891807, 1705891807);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `idtopic` int NOT NULL,
  `idcategory` int NOT NULL,
  `idcreated` int NOT NULL,
  `answera` varchar(255) NOT NULL,
  `answerb` varchar(255) NOT NULL,
  `answerc` varchar(255) NOT NULL,
  `answerd` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `level` int NOT NULL,
  `type` int NOT NULL,
  `createdat` int NOT NULL,
  `updatedat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `name`, `image`, `idtopic`, `idcategory`, `idcreated`, `answera`, `answerb`, `answerc`, `answerd`, `answer`, `level`, `type`, `createdat`, `updatedat`) VALUES
(1, 'What is the main ingredient in a bread?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 1, 2, 'Sugar', 'Flour', 'Cheese', 'Rice', 'B', 1, 0, 1742278078, 1742278078),
(2, 'Which of the following is a dairy product?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 1, 2, 'Chicken', 'Carrot', 'Yogurt', 'Rice', 'C', 2, 0, 1742278126, 1742278126),
(3, 'Which of these foods is high in protein?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 1, 2, 'Apple', 'Cheese', 'Cabbage', 'Butter', 'B', 3, 0, 1742278175, 1742278175),
(4, 'A sandwich is made of bread, ______, and vegetables.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 1, 2, '', '', '', '', 'meat', 1, 1, 1742278217, 1742278405),
(5, 'Milk, cheese, and yogurt are examples of ______ products.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 1, 2, '', '', '', '', 'dairy', 2, 1, 1742278431, 1742278431),
(6, 'To make a cake, you need flour, eggs, sugar, and ______.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 1, 2, '', '', '', '', 'butter', 3, 1, 1742278463, 1742278463),
(7, 'What color is a ripe banana?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 2, 2, 'Red', 'Yellow ', 'Green', 'Blue', 'B', 1, 0, 1742281456, 1742281456),
(8, 'Which fruit is known as the \"king of fruits\"?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 2, 2, 'Apple', 'Mango', 'Durian', 'Orange', 'C', 2, 0, 1742281518, 1742281518),
(9, 'Which of these fruits is a citrus fruit?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 2, 2, 'Mango', 'Papaya', 'Lemon', 'Watermelon', 'C', 3, 0, 1742281551, 1742281551),
(10, 'A banana is ______ when it is fully ripe.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 2, 2, '', '', '', '', 'yellow', 1, 1, 1742281594, 1742281594),
(11, 'An apple has a ______ inside, which can grow into a new tree.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 2, 2, '', '', '', '', 'seed', 2, 1, 1742281620, 1742281620),
(12, 'Fruits like oranges and lemons contain a lot of ______, which helps our immune system.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 2, 2, '', '', '', '', 'vitamin C', 3, 1, 1742281646, 1742281646),
(13, 'What do trees provide us with?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 3, 2, 'Water', 'Oxygen', 'Fire', 'Electricity', 'B', 1, 0, 1742281697, 1742281697),
(14, 'Which of the following is a renewable energy source?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 3, 2, 'Coal', 'Solar power', 'Oil', 'Gas', 'B', 2, 0, 1742281728, 1742281728),
(15, 'What is the largest ocean on Earth?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 3, 2, 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocea', 'Arctic Ocean', 'C', 3, 0, 1742281773, 1742281773),
(16, 'The sky is usually ______ on a sunny day.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 3, 2, '', '', '', '', 'blue', 1, 1, 1742281795, 1742281795),
(17, 'Plants need sunlight, water, and ______ to grow.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 3, 2, '', '', '', '', 'soil', 2, 1, 1742281819, 1742281819),
(18, 'The process by which plants make their own food using sunlight is called ______.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 3, 2, '', '', '', '', 'photosynthesis', 3, 1, 1742281838, 1742281838),
(19, 'What do students use to write on a blackboard?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 4, 2, 'Pen', 'Chalk', 'Paper', 'Eraser', 'B', 1, 0, 1742281875, 1742281875),
(20, 'What subject involves numbers and calculations?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 4, 2, 'History', 'Mathematics', 'Art', 'Science', 'B', 2, 0, 1742281912, 1742281912),
(21, 'Which of these is NOT a school subject?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 4, 2, 'Geography', 'Astronomy', 'Science', 'Literature', 'B', 3, 0, 1742281957, 1742281957),
(22, 'We use a ______ to write on paper.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 4, 2, '', '', '', '', 'pen', 1, 1, 1742282048, 1742282048),
(23, 'In Mathematics, the symbol “+” is used for ______.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 4, 2, '', '', '', '', 'addition', 2, 1, 1742282066, 1742282066),
(24, 'In Geography, the largest continent on Earth is ______.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 4, 2, '', '', '', '', 'Asia', 3, 1, 1742282092, 1742282092),
(25, 'What do people watch movies on?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 5, 2, 'Notebook', 'Television', 'Calculator', 'Telephone', 'B', 1, 0, 1742282151, 1742282151),
(26, 'Which of the following is a musical instrument?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 5, 2, 'Guitar', 'Camera', 'Microwave', 'Speaker', 'A', 1, 0, 1742282184, 1742282184),
(27, 'Who directs a movie?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 5, 2, 'Actor', 'Writer', 'Director', 'Producer', 'C', 3, 0, 1742282229, 1742282229),
(28, 'People watch movies at the ______.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 5, 2, '', '', '', '', 'cinema', 1, 1, 1742282254, 1742282254),
(29, 'A guitar has ______ strings', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 5, 2, '', '', '', '', 'six', 2, 1, 1742282276, 1742282276),
(30, 'The person who writes a book is called an ______.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 5, 2, '', '', '', '', 'author', 3, 1, 1742282298, 1742282298),
(31, 'What is a violin made of?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 6, 2, 'Plastic', 'Metal', 'Wood', 'Glass', 'C', 1, 0, 1742285337, 1742285337),
(32, 'How many strings does a standard violin have?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 6, 2, '4', '5', '6', '7', 'A', 2, 0, 1742285361, 1742285361),
(33, 'What is the small stick used to play the violin called?', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 6, 2, 'Stick', 'Bow', 'Rod', 'Baton', 'B', 3, 0, 1742285388, 1742285388),
(34, 'A violin has ______ strings.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 6, 2, '', '', '', '', 'four', 1, 1, 1742285428, 1742285428),
(35, 'The small stick used to play the violin is called a ______.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 6, 2, '', '', '', '', 'bow', 2, 1, 1742285439, 1742285439),
(36, 'The wooden body of a violin helps to ______ the sound.', 'https://media.istockphoto.com/id/1386740242/vector/vector-bubbles-with-question-mark-question-icons-isolated-on-white.jpg?s=612x612&w=0&k=20&c=evjrckVKb_RVRcN5qV1Tz1pkSu3FvHKCGtynu8btxhA=', 1, 6, 2, '', '', '', '', 'amplify', 3, 1, 1742285452, 1742285452);

-- --------------------------------------------------------

--
-- Table structure for table `quizs`
--

CREATE TABLE `quizs` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `idtopic` int NOT NULL,
  `idcategory` int NOT NULL,
  `idcreated` int NOT NULL,
  `groupquestion` varchar(255) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `createdat` int NOT NULL,
  `updatedat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `quizs`
--

INSERT INTO `quizs` (`id`, `name`, `idtopic`, `idcategory`, `idcreated`, `groupquestion`, `image`, `createdat`, `updatedat`) VALUES
(1, 'Food Test', 1, 1, 2, '[1,2,3,4,5,6]', 'https://cleverads.vn/blog/wp-content/uploads/2023/10/thi-truong-healthy-food-1.jpg', 1742284956, 1742284956),
(2, 'Fruit Test', 1, 2, 2, '[7,8,9,10,11,12]', 'https://www.euroschoolindia.com/wp-content/uploads/2023/04/ways-to-eat-more-fruit.jpg', 1742285015, 1742285015);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int NOT NULL,
  `idquiz` int NOT NULL,
  `iduser` int NOT NULL,
  `score` int NOT NULL,
  `total` int NOT NULL,
  `historyanswer` varchar(1000) NOT NULL,
  `createdat` int NOT NULL,
  `updatedat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `idquiz`, `iduser`, `score`, `total`, `historyanswer`, `createdat`, `updatedat`) VALUES
(1, 1, 3, 6, 6, '[{\"id\":\"1\",\"answer\":\"B\"},{\"id\":\"2\",\"answer\":\"C\"},{\"id\":\"3\",\"answer\":\"B\"},{\"id\":\"4\",\"answer\":\"meat\"},{\"id\":\"5\",\"answer\":\"dairy\"},{\"id\":\"6\",\"answer\":\"butter\"}]', 1742286187, 1742286187),
(2, 1, 3, 3, 6, '[{\"id\":\"1\",\"answer\":\"B\"},{\"id\":\"2\",\"answer\":\"C\"},{\"id\":\"3\",\"answer\":\"B\"},{\"id\":\"4\",\"answer\":\"MEAT\"},{\"id\":\"5\",\"answer\":\"DAIRY\"},{\"id\":\"6\",\"answer\":\"BUTTER\"}]', 1742286272, 1742286272),
(3, 2, 3, 4, 6, '[{\"id\":\"7\",\"answer\":\"B\"},{\"id\":\"8\",\"answer\":\"B\"},{\"id\":\"10\",\"answer\":\"yellow\"},{\"id\":\"11\",\"answer\":\"seed\"},{\"id\":\"12\",\"answer\":\"vitamin C\"}]', 1742286735, 1742286735),
(4, 2, 3, 6, 6, '[{\"id\":\"7\",\"answer\":\"B\"},{\"id\":\"8\",\"answer\":\"C\"},{\"id\":\"9\",\"answer\":\"C\"},{\"id\":\"10\",\"answer\":\"yellow\"},{\"id\":\"11\",\"answer\":\"seed\"},{\"id\":\"12\",\"answer\":\"vitamin C\"}]', 1742286838, 1742286838),
(5, 1, 3, 6, 6, '[{\"id\":\"1\",\"answer\":\"B\"},{\"id\":\"2\",\"answer\":\"C\"},{\"id\":\"3\",\"answer\":\"B\"},{\"id\":\"4\",\"answer\":\"meat\"},{\"id\":\"5\",\"answer\":\"dairy\"},{\"id\":\"6\",\"answer\":\"butter\"}]', 1742288391, 1742288391),
(6, 1, 3, 6, 6, '[{\"id\":\"1\",\"answer\":\"B\"},{\"id\":\"2\",\"answer\":\"C\"},{\"id\":\"3\",\"answer\":\"B\"},{\"id\":\"4\",\"answer\":\"meat\"},{\"id\":\"5\",\"answer\":\"dairy\"},{\"id\":\"6\",\"answer\":\"butter\"}]', 1742292200, 1742292200);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameessay` varchar(255) NOT NULL,
  `contentessay` varchar(1000) NOT NULL,
  `video` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(255) NOT NULL,
  `idcreated` int NOT NULL,
  `createdat` int NOT NULL,
  `updatedat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `nameessay`, `contentessay`, `video`, `description`, `image`, `idcreated`, `createdat`, `updatedat`) VALUES
(1, 'Alphabet', 'The Importance of the Alphabet', 'Alphabets form the foundation of any language. They are a set of letters that help us create words and communicate. The English alphabet consists of 26 letters, ranging from A to Z. Learning the alphabet is the first step in acquiring reading and writing skills. Children are often introduced to alphabets using songs, books, and visual aids.', 'HZC2AWoLxi0', 'An alphabet is a set of symbols or characters that represent the basic sounds of a language.', 'https://imgv2-1-f.scribdassets.com/img/document/671640943/original/98ce1c6ff3/1?v=1', 2, 1705886421, 1705886421),
(2, 'Animal', 'My Favourite Animal', 'My favourite animal is a dog. Dogs are known for their friendliness and loyalty, and nothing can beat a dog’s devotion to their master. These are furry creatures found in various species, such as German shepherds, Pomeranians, Labradors, and others. Even I have a pet dog whose name is Rocky, and he is a German Shepherd with golden brown fur. He enjoys being around us and is extremely friendly. ', 'wCfWmlnJl-A', 'Animals are living things. Like plants, animals need food and water to live.', 'https://i.ibb.co/ZLthJdG/home-animal.png', 2, 1705886421, 1705886421),
(3, 'Birds', 'Benefits from birds', 'We get a lot of benefits from birds. These birds flying in the sky are excellent natural means of cleaning the environment. Vultures, eagles, crows, and many other animal birds are also such a gift of nature to us that they take care of all their insects, creatures, and polluting things.', 'VaARSaHa5GA', 'Birds are vertebrate animals that have feathers, wings, and beaks.', 'https://i.ibb.co/fNQXZp1/home-birds.png', 2, 1705886421, 1705886421),
(4, 'Food', 'Benefits of food', 'Food is the substance we eat every day for energy and strength. There are many different types of food, such as fruits, vegetables, rice, and pasta. We need to eat a variety of foods to get all the essential nutrients the body needs. Not eating a healthy and balanced diet leads to weakness and deficiency diseases.', 'ykTR0uFGwE0', 'An alphabet is a set of graphs or characters used to represent the phonemic structure of a language', 'https://i.ibb.co/vJYjnh8/home-food.png', 2, 1705886421, 1705886421),
(5, 'Fruit', 'What is fruit?', 'A fruit is the part of a flowering plant that contains the seeds. The skin of a fruit may be thin, tough, or hard. Its insides are often sweet and juicy. But some fruits, including nuts, are dry. Fruits develop from a plant\'s flowers.', 'mbPNkDEN3Ps', ' Food is one of the basic necessities of life.', 'https://i.ibb.co/vmrWNv9/home-fruits.png', 2, 1705886421, 1705886421),
(6, 'Clothes', 'The Clothes We Wear', 'It is absolutely correct to say that clothes make the man full. Normally, naked persons have no influence or respect within society. In today\'s modern world, society is developing around us in the sense that his clothing usually reflects his social status. It is not only for women but also for men, who now wear different types of clothes for social status, as well as a method of self-pressure', '-jBfb33_KHU', 'Clothing (also known as clothes, garments, dress, apparel, or attire) is any item worn on the body. ', 'https://i.ibb.co/hBqtX8k/home-clothes.png', 2, 1705886421, 1705886421),
(7, 'Color', 'Colours in Nature', 'Nature is full of colours. The blue sky, green trees, colourful birds and flowers are all examples. These colours are not just for show, they have a purpose. For example, bright colours in flowers attract bees for pollination.', 'jYAWf8Y91hA', 'Light travels in waves. Scientists use an idea called wavelength to describe these waves.', 'https://i.ibb.co/yNZhM36/home-color.png', 2, 1705886421, 1705898681),
(8, 'Body Parts', 'Different Systems in the Human Body', 'The human body looks very simple from the outside with hands, legs, face, eyes, ears and so on. But, there is a more complex and significant structure inside the body that helps us to live. The human body is made up of many small structures like cells, tissues, organs and systems. It is covered by the skin, beneath which you could find muscles, veins, and blood. This structure is formed on the base of a skeleton, which consists of many bones. All these are arranged in a specific way to help the body function effectively.', 'QkHQ0CYwjaI', ' The human body contains 11 major organ systems', 'https://i.ibb.co/M9tzW5f/home-body-parts.png', 2, 1705886421, 1705886421),
(9, 'Flower', 'My Favourite Flower', 'My favourite flower is rose. I like other flowers too but I find the rose to be the most beautiful among all flowers. It is also called the king of flowers. They come in many colours so it offers great variety. For instance, they are available in red, pink, white, yellow, blue and more. My favourite is the white rose. Even though the rose has small and sharp thorns on its stem, people love picking roses.', 'eLk4juWjfgQ', 'A flower is the bloom or blossom of a plant.', 'https://i.ibb.co/cvcJsrp/home-flower.png', 2, 1705886421, 1705886421),
(10, 'Country', 'My Beautiful Country: India', 'The name of my country is India. Citizens of India are known as Indians. Situated in the Asian continent, India is also known in the names of ‘Bharat’ and ‘Hindustan’. Therefore, the Indian citizens are also referred to as ‘Bharatiya’ and ‘Hindustani’ respectively. Our country is the second-most populous country in the world. India’s national flag is tri-coloured horizontally - deep saffron at the top, white in the middle, and green at the bottom. At the centre of the flag, there is Ashoka Chakra which is a navy blue wheel with white bands.', 'rGcRe4lt4z4', 'Countries are also called nations, states, or nation-states.', 'https://i.ibb.co/jwdDds8/home-country.png', 2, 1705886421, 1705886421);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `birthday` varchar(8) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `roleid` int NOT NULL,
  `createdat` int NOT NULL,
  `updatedat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `image`, `birthday`, `active`, `roleid`, `createdat`, `updatedat`) VALUES
(1, 'Quản trị viên', '$2b$10$BSxP4Nx08UeSWURpIg7sG.MydilRPsAKqZC6ySm3Dvt/ITHRUdv5u', 'admin@gmail.com', 'https://cdn-icons-png.flaticon.com/512/9187/9187604.png', '19900101', 1, 1, 1742132926, 1742132926),
(2, 'Giảng viên', '$2b$10$BSxP4Nx08UeSWURpIg7sG.MydilRPsAKqZC6ySm3Dvt/ITHRUdv5u', 'quanly@gmail.com', 'https://png.pngtree.com/png-clipart/20211009/original/pngtree-teachers-day-boy-logo-version-png-image_6846578.png', '19900101', 1, 2, 1742132992, 1742203230),
(3, 'Học Sinh', '$2b$10$BSxP4Nx08UeSWURpIg7sG.MydilRPsAKqZC6ySm3Dvt/ITHRUdv5u', 'hocsinh@gmail.com', 'https://img.freepik.com/premium-vector/user-icon-icon_1076610-59410.jpg', '20100909', 1, 3, 1742133042, 1742214160);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizs`
--
ALTER TABLE `quizs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `quizs`
--
ALTER TABLE `quizs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
