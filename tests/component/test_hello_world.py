import unittest
from functions.hello_world.main import hello_world


class TestMain(unittest.TestCase):
    def test_main(self):
        self.assertEqual('Hello, World!', hello_world(None))


if __name__ == '__main__':
    unittest.main()
