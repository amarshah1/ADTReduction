
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
(assert (= l3 l1) )
(assert (= l2 Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l3 Nil) (= l1 l1)) )
(assert (and (= l2 Nil) (= l3 l1)) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l2 Nil) (= l3 l2)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (not (= l3 l2)) )
(check-sat)
