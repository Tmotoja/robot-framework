import unittest
from mathaddab_modul import add

class TestMathAdd(unittest.TestCase):
    def test_add_two_numers(self):
        result= add(2, 3)
        self.assertEqual(result, 5)

if __name__ == '__main__':
    unittest.main()