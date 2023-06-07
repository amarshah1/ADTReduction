
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
(assert (or (= l1 l0) (= l0 Nil)) )
(assert (not (= l3 l1)) )
(assert (not (= l1 Nil)) )
(assert (or (= l3 Nil) (= l0 l1)) )
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l3 l0) (is-Cons l2)) )
(check-sat)
