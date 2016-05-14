#!/bin/bash
# X ∪ Y
combine <(echo paraparaparadise | conv fs="" 2 | sort) and <(echo paragraph | conv fs="" 2 | sort) |uniq

# X ∩ Y
combine <(echo paraparaparadise | conv fs="" 2 | sort) and <(echo paragraph | conv fs="" 2 | sort) | uniq

# X - Y
combine <(echo paraparaparadise | conv fs="" 2 | sort) not <(echo paragraph | conv fs="" 2 | sort)

# Y - X
combine <(echo paragraph | conv fs="" 2 | sort) and <(echo paraparaparadise | conv fs="" 2 | sort) | uniq
