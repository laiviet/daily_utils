import json
import glob
import logging

logger = logging.getLogger(__name__)


def read_json(fname):
    with open(fname) as f:
        data = json.load(f)
    return data


def write_json(fname, data):
    with open(fname, 'w') as f:
        json.dump(data, f, indent=2)


def read_jsonlines(fname):
    with open(fname) as f:
        lines = f.readlines()
    data = []
    error = 0
    for i, line in enumerate(lines):
        try:
            d = json.loads(line)
            data.append(d)
        except:
            error += 1
    logger.info(f"Read {len(data)} lines from {fname}, Error {error}")


def write_jsonlines(fname, data):
    lines = [json.dumps(x) for x in data]
    with open(fname, 'w') as f:
        f.write('\n'.join(lines))
