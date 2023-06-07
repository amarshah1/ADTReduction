
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
(assert (= l1 l3) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Cons l3) )
(assert (or (= l0 Nil) (= l2 l2) (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l3 l3) (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
