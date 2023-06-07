
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l1 l3) (= l3 l2)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l3 l3) (= l0 l1)) )
(assert (is-Cons l0) )
(check-sat)
