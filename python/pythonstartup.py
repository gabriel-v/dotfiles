def _init():
    try:
        import __builtin__
    except ImportError:
        import builtins as __builtin__
    if hasattr(__builtin__, 'h'):
        return
    import os
    import sys
    import types
    import uuid
    import pprint
    import time
    import datetime
    import pdb
    try:
        import simplejson as json
    except ImportError:
        import json

    __import__('rlcompleter')

    helpers = types.ModuleType('helpers')
    helpers.pp = pprint.pprint
    helpers.uuid = uuid.uuid4
    helpers.t = time
    helpers.dt = datetime
    helpers.json = json
    helpers.pdb = pdb
    __builtin__.h = helpers

    if os.environ.get('PYTHON_PDB_HOOK') == 'on':
        sys.excepthook = lambda *args: pdb.pm()

_init()
del _init
