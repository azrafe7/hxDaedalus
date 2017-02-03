package hxDaedalus.iterators;
import hxDaedalus.data.Edge;
import hxDaedalus.data.Face;
import hxDaedalus.data.Vertex;

@:expose
class FromVertexToHoldingFaces {
    public var fromVertex(never, set) : Vertex;
    var _fromVertex : Vertex;
    var _nextEdge : Edge;
    var _resultFace : Face;
    
    public function new(){}
    
    function set_fromVertex( value: Vertex ): Vertex {
        _fromVertex = value;
        _nextEdge = _fromVertex.edge;
        return value;
    }
    
    public function next() : Face {
        if( _nextEdge != null ){
            do{
                _resultFace = _nextEdge.leftFace;
                _nextEdge = _nextEdge.rotLeftEdge;
                if( _nextEdge == _fromVertex.edge ){
                    _nextEdge = null;
                    if( !_resultFace.isReal ) _resultFace = null;
                    break;
                }
            } while ( !_resultFace.isReal );
        } else {
            _resultFace = null;
        }
        return _resultFace;
    }
}
