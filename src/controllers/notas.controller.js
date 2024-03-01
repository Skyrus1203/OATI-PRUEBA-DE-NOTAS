import {
    getConnection
} from "../database/database";
//Obtener notas
const getNotas = async (request, response) => {
    try {
        console.log(request.params);
        const {
            id
        } = request.params;
        if (id == undefined) {
            response.status(400).json({
                message: "Bad Request. Please fill all fields"
            });
        } else {
            const idEst = id;
            const connection = await getConnection();
            const result = await connection.query("select est.idEstudiante, est.nombreEstudiante, mat.nombreMateria,estmat.nota from materia mat, estudiantemateria estmat, estudiante est where est.idEstudiante='" + idEst + "' and est.idEstudiante=estmat.Estudiante_idEstudiante and estmat.Materia_idMateria=idMateria;");
            console.log(result);
            response.json(result);
        }
    } catch (error) {
        response.status(500);
        response.send(error.message);
    }
};
//Añadir un estudiante
const addEstudiante = async (request, response) => {
    try {
        const {
            idEstudiante,
            nombreEstudiante
        } = request.body;
        if (idEstudiante == undefined || nombreEstudiante == undefined) {
            response.status(400).json({
                message: "Bad Request. Please fill all fields"
            });
        } else {
            const idEst = idEstudiante;
            const estudiante = {
                idEstudiante,
                nombreEstudiante
            };
            const connection = await getConnection();
            const result = await connection.query("INSERT INTO ESTUDIANTE SET ?", estudiante);
            response.json("Estudiante agregado");
            for (var i = 6; i <= 10; i++) {
                const result1 = await connection.query("INSERT INTO estudiantemateria (Estudiante_idEstudiante, Materia_idMateria) VALUES ('" + idEst + "'," + i + ")");
            }
        }

    } catch (error) {
        response.status(500);
        response.send(error.message);
    }
};

//Ingresar nota
const addNota=async (request, response) =>{
    try{
        const {nota,idEstudiante,idMateria}=request.body;
        if(nota==undefined||idEstudiante==undefined||idMateria==undefined){
            response.status(400).json({
                message: "Bad Request. Please fill all fields"
            });
        }else{
            const notaIn=nota;
            const idEst=idEstudiante;
            const idMat=idMateria;
            const connection=await getConnection();
            const result = await connection.query("update estudiantemateria set nota='"+notaIn+"' where Estudiante_idEstudiante='"+idEst+"' and Materia_idMateria='"+idMat+"';");
            response.json("Nota ingresada");
        }
    }catch(error ){
        response.status(500);
        response.send(error.message);
    }
}

export const methods = {
    getNotas,
    addEstudiante,
    addNota
};