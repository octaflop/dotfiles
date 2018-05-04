#!/usr/bin/python

"""
Command line utilities to help start a clean boilerplate project

Requirements:

- Click command line: `pip install Click`

Examples taken from https://www.svds.com/jupyter-notebook-best-practices-for-data-science/  # noqa
"""

import os

try:
    import click
except ImportError:
    print("Please `pip install Click` into your environment to continue!")

DEVELOP_FOLDER_README = """
Just like your traditional paper lab notebook, you can store sketches of data as it's being explored.

We use the file format:

`[ISO 8601 date]-[DS-initials]-[2-4 word description].ipynb`

For example:

`2017-06-28-fc-initial-data-clean.ipynb`

- Each Notebook keeps a historical record of analysis being recorded.
- This notebook is not meant to be anything other than a place for experiments
- This notebook is controlled by a single author (marked with their initials in the filename)
- Notebooks can be split up if they get too long
- Notebooks can be split up by topic, if it makes sense to do so.
"""  # noqa

DELIVERABLE_FOLDER_README = """
A fully-polished version of your lab notebooks. These store the final output of your analysis.
The entire data science team controls these.

Capitalize these reports as if the name will become a PDF title. For example:

- `Star-Spectroscopy-Doppler-Shift.ipynb`
"""  # noqa

folders = [
    ("develop", DEVELOP_FOLDER_README),
    ("deliver", DELIVERABLE_FOLDER_README),
    ("figures", "Used to store generated figures"),
    ("src", "General-purpose modules and scripts. Eg, to load data."),
    ("data", "Data will be auto-loaded into here")
]

GITIGNORE = """
.ipynb_checkpoints/
.pip_cache/
*.pyc
*.egg-info/
*.swp
/data/*
!/data/README.md
"""

README = """
{name} is an auto-generated jupyter datascience notebook.

It generates a directory structure which upholds best practices for a jupyter
datascience project, for example:

- develop # (Lab-notebook style)
  + [ISO 8601 date]-[DS-initials]-[2-4 word description].ipynb
  + 2017-06-28-fc-initial-data-clean.html
  + 2017-06-28-fc-initial-data-clean.ipynb
  + 2017-06-28-fc-initial-data-clean.py
  + 2017-07-02-dg-star-spectroscopy.html
  + 2017-07-02-dg-star-spectroscopy.pynb
  + 2017-07-02-dg-star-spectroscopy.py
- deliver # (final analysis, code, presentations, etc)
  + Star-Spectroscopy-Doppler-Shift.ipynb
  + Star-Spectroscopy-Doppler-Shift.html
  + Star-Spectroscopy-Doppler-Shift.py
- figures
  + 2017-07-16-dg-spectroscopy-human-spectrum.png
- src # (modules and scripts)
  + init.py
  + load_star_data.py
- data (backup-separate from version control)
  + spectroscopy-results.csv
"""

JUPYTER_CONFIG = """
c = get_config()
### If you want to auto-save .html and .py versions of your notebook:
# modified from: https://github.com/ipython/ipython/issues/8009
import os
from subprocess import check_call

def post_save(model, os_path, contents_manager):
    # post-save hook for converting notebooks to .py scripts
    if model['type'] != 'notebook':
        return # only do this for notebooks
    d, fname = os.path.split(os_path)
    check_call(['jupyter', 'nbconvert', '--to', 'script', fname], cwd=d)
    check_call(['jupyter', 'nbconvert', '--to', 'html', fname], cwd=d)

c.FileContentsManager.post_save_hook = post_save
"""


@click.command()
@click.option('--name', prompt='Name of the datascience project',
              help='The base name of your datascience project')
def create_ds_folder(name):
    click.echo("Now generating a workspace for your {name} project".format(
        name=name))
    os.mkdir(name)
    os.chdir(name)
    for folder, readme in folders:
        os.mkdir(folder)
        with open(os.path.join(folder, 'README.md'), 'w+') as f:
            f.write(readme)
    with open('README.md', 'w+') as f:
        f.write(README.format(name=name))
    with open('.gitignore', 'w+') as f:
        f.write(GITIGNORE)
    click.echo(
        "{name} was generated. Please `cd {name}` for more details".format(
            name=name))
    click.echo(
        "If you haven't done so already, you will want to copy this into your"
        " ~/.jupyter/jupyter_notebook_config.py")
    click.echo(JUPYTER_CONFIG)


if __name__ == '__main__':
    create_ds_folder()
