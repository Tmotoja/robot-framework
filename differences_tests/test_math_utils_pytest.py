from mathaddab_modul import add

def test_add_two_numbers():
    result = add(2, 3)
    assert result == 5, f"Expected 5, but got {result}"