
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
(assert (and (= l1 Nil) (is-Cons l0) (= l1 l3) (= l2 l2)) )
(assert (not (is-Cons l1)) )
(assert (and (is-Cons Nil) (= l2 l0)) )
(assert (or (= l3 Nil) (= l2 l0)) )
(assert (is-Nil l0) )
(assert (= l0 Nil) )
(assert (= l0 l3) )
(assert (is-Cons Nil) )
(check-sat)
