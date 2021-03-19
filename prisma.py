from OpenGL.GLUT import *
from OpenGL.GLU import *
from OpenGL.GL import *
import math

vertices = (
    (-0.5,0.87,1),
    (1,0,1),
    (-0.5,-0.87,1),
    (-0.5,-0.87,0),
    (1, 0,0),
    (-0.5,0.87,0),
)

faces = (
    (0,1,2),
    (5,4,3),
    (0,4,5),
    (4,1,2),
    (0,1,4),
    (2,3,4),
    (2,3,5),
    (0,2,5),
    )

cores = ( (1,0,0),(1,1,0),(0,1,0),(0,1,1),(0,0,1),(1,0,1),(0.5,1,1),(1,0,0.5) )

def Prisma():
    glPushMatrix()
    glTranslatef(0,-2,0)
    glRotatef(a,0.0,1.0,0.0)
    glRotatef(-110,1.0,0.0,0.0)
    glColor3fv(cores[0])
    glBegin(GL_TRIANGLES)
    for face in faces:
        # glColor3fv(cores[i])
        for vertex in face:
           glColor3fv(cores[vertex])
           glVertex3fv(vertices[vertex])    
    glEnd()
    glPopMatrix()

a=0

def desenha():
    global a
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    Prisma()
    a+=1
    glutSwapBuffers()
  
def timer(a):
    glutPostRedisplay()
    glutTimerFunc(10,timer,1)

# PROGRAMA PRINCIPAL
glutInit(sys.argv)
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_MULTISAMPLE)
glutInitWindowSize(800,600)
glutCreateWindow("PRISMA")
glutDisplayFunc(desenha)
glEnable(GL_MULTISAMPLE)
glEnable(GL_DEPTH_TEST)
glClearColor(0,0,0,1)
gluPerspective(45,800.0/600.0,0.1,100.0)
glTranslatef(0.0,0.0,-10)
glutTimerFunc(10,timer,1)
glutMainLoop()
