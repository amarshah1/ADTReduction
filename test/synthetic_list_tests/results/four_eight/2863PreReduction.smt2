
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
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 l3) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l2 l1)) )
(assert (is-Cons l0) )
(assert (not (= l0 l2)) )
(assert (and (= l0 l3) (is-Cons l3)) )
(check-sat)